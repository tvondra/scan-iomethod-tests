#!/usr/bin/env bash

MACHINES="xeon ryzen_nvme ryzen_sata"
#MACHINES="xeon ryzen_sata"

rm -Rf data
mkdir data

rm -f scans.db
rm -f *.pdf *.plot

sqlite3 scans.db <<EOF
create table results_xeon (seq int, cnt int, dataset text, scan text, prefetch int, run int, io_method text, io_workers int, shared_buffers text, start_val int, end_val int, optimal text, total_rows int, rows int, total_pages int, pages int, timing_cold numeric, timing_warm numeric);
create table results_ryzen_nvme (seq int, cnt int, dataset text, scan text, prefetch int, run int, io_method text, io_workers int, shared_buffers text, start_val int, end_val int, optimal text, total_rows int, rows int, total_pages int, pages int, timing_cold numeric, timing_warm numeric);
create table results_ryzen_sata (seq int, cnt int, dataset text, scan text, prefetch int, run int, io_method text, io_workers int, shared_buffers text, start_val int, end_val int, optimal text, total_rows int, rows int, total_pages int, pages int, timing_cold numeric, timing_warm numeric);
EOF

sqlite3 scans.db <<EOF
.mode csv
.separator ' '
.import ryzen-nvme.csv results_ryzen_nvme
.import ryzen-sata.csv results_ryzen_sata
--.import ryzen-sata2.csv results_ryzen_sata
.import xeon.csv results_xeon
--.import xeon2.csv results_xeon
EOF


for m in $MACHINES; do

	rm -f tmp.data

	mkdir data/$m

	for sb in 4GB 32GB; do

		sqlite3 scans.db > tmp.data <<EOF
.mode tab
.separator ' '
SELECT DISTINCT dataset, scan, prefetch, io_method, io_workers FROM results_${m}
EOF

		while IFS= read -r line; do

			IFS=' ' read -r -a strarray <<< "$line"

			dataset="${strarray[0]}"
			scan="${strarray[1]}"
			prefetch="${strarray[2]}"
			iomethod="${strarray[3]}"
			ioworkers="${strarray[4]}"

			sqlite3 scans.db > data/$m/$dataset-$scan-$prefetch-$iomethod-$ioworkers-$sb.data <<EOF
.mode tab
SELECT (rows * 100.0 / total_rows), (pages * 100.0 / total_pages), timing_cold, timing_warm FROM results_${m} WHERE dataset = '$dataset' AND scan = '$scan' AND prefetch = $prefetch AND io_method = '$iomethod' AND io_workers = $ioworkers AND shared_buffers = '$sb'
EOF

		done < tmp.data

		sqlite3 scans.db > tmp.data <<EOF
.mode tab
.separator ' '
SELECT DISTINCT dataset, scan, prefetch, io_method, io_workers FROM results_${m}
EOF

		while IFS= read -r line; do

			IFS=' ' read -r -a strarray <<< "$line"

			dataset="${strarray[0]}"
			scan="${strarray[1]}"
			prefetch="${strarray[2]}"
			iomethod="${strarray[3]}"
			ioworkers="${strarray[4]}"

			for optimal in yes no; do

				sqlite3 scans.db > data/$m/$dataset-$scan-$prefetch-$sb-$optimal.data <<EOF
.mode tab
SELECT (rows * 100.0 / total_rows), (pages * 100.0 / total_pages), timing_cold, timing_warm FROM results_${m} WHERE dataset = '$dataset' AND scan = '$scan' AND prefetch = $prefetch AND shared_buffers = '$sb' AND optimal = '$optimal'
EOF

			done

		done < tmp.data

	done

done

for sb in 4GB 32GB; do

	for m in $MACHINES; do

		sqlite3 scans.db > datasets.data <<EOF
.mode tab
.separator ' '
SELECT DISTINCT dataset FROM results_${m} ORDER BY dataset DESC
EOF

		sqlite3 scans.db > prefetch.data <<EOF
.mode tab
.separator ' '
SELECT DISTINCT prefetch FROM results_${m} ORDER BY dataset DESC
EOF

		for sel in rows pages; do

			if [ "$sel" == "rows" ]; then
				D="100.0 * rows / total_rows"
				X="1"
				M="0.01"
			else
				X="2"
				D="100.0 * pages / total_pages"
				M="0.1"
			fi

			# min=$(sqlite3 scans.db "SELECT MIN($D) FROM results_${m}")

			for cache in cold warm; do

				while IFS= read -r prefetch; do

					if [ "$cache" == "cold" ]; then
						C="timing_cold"
						Y="3"
					else
						C="timing_warm"
						Y="4"
					fi

					#sed "s/MACHINE/$m/" plot.template | sed "s/SEL/$sel/" | sed "s/CACHE/$cache/" | sed "s/SCALE/raw/" > $m-$sel-$cache-raw.plot
					#sed "s/MACHINE/$m/" plot.template | sed "s/SEL/$sel/" | sed "s/CACHE/$cache/" | sed "s/SCALE/scaled/"  > $m-$sel-$cache-scaled.plot
					sed "s/MACHINE/$m/" plot.template | sed "s/SEL/$sel/" | sed "s/CACHE/$cache/" | sed "s/SCALE/scaled/" | sed "s/PREFETCH/$prefetch/" | sed "s/BUFFERS/$sb/"  > $m-$sel-$cache-$sb-$prefetch.plot
					sed "s/MACHINE/$m/" plot-log.template | sed "s/SEL/$sel/" | sed "s/CACHE/$cache/" | sed "s/SCALE/scaled/" | sed "s/PREFETCH/$prefetch/" | sed "s/BUFFERS/$sb/" > $m-$sel-$cache-$sb-$prefetch-log.plot

					while IFS= read -r dataset; do

						max=$(sqlite3 scans.db "SELECT MAX($C) FROM results_${m} WHERE dataset = '$dataset'")

						#echo "set xrange[$M:100]" >> $m-$sel-$cache-raw.plot
						#echo "set xrange[$M:100]" >> $m-$sel-$cache-scaled.plot
						echo "set xrange[$M:100]" >> $m-$sel-$cache-$sb-$prefetch.plot
						echo "set xrange[$M:100]" >> $m-$sel-$cache-$sb-$prefetch-log.plot

						#echo "set yrange[0:$max]" >> $m-$sel-$cache-scaled.plot
						echo "set yrange[0:$max]" >> $m-$sel-$cache-$sb-$prefetch.plot
						echo "set yrange[0.01:$max]" >> $m-$sel-$cache-$sb-$prefetch-log.plot

						dataset=$(echo $dataset | sed 's/_/\\\\_/')

						#sed "s/MACHINE/$m/" row.template | sed "s/X/$X/" | sed "s/Y/$Y/" | sed "s/DATASET/$line/" >> $m-$sel-$cache-raw.plot
						#sed "s/MACHINE/$m/" row.template | sed "s/X/$X/" | sed "s/Y/$Y/" | sed "s/DATASET/$line/" >> $m-$sel-$cache-scaled.plot
						sed "s/MACHINE/$m/" row.template | sed "s/PREFETCH/$prefetch/" | sed "s/X/$X/" | sed "s/Y/$Y/" | sed "s/DATASET/$dataset/" | sed "s/BUFFERS/$sb/" >> $m-$sel-$cache-$sb-$prefetch.plot
						sed "s/MACHINE/$m/" row.template | sed "s/PREFETCH/$prefetch/" | sed "s/X/$X/" | sed "s/Y/$Y/" | sed "s/DATASET/$dataset/" | sed "s/BUFFERS/$sb/" >> $m-$sel-$cache-$sb-$prefetch-log.plot

					done < datasets.data

					#gnuplot $m-$sel-$cache-raw.plot
					#gnuplot $m-$sel-$cache-scaled.plot
					gnuplot $m-$sel-$cache-$sb-$prefetch.plot
					gnuplot $m-$sel-$cache-$sb-$prefetch-log.plot

				done < prefetch.data

			done

		done

	done

done


for sb in 4GB 32GB; do

	for m in $MACHINES; do

		sqlite3 scans.db > datasets.data <<EOF
.mode tab
.separator ' '
SELECT DISTINCT dataset FROM results_${m} ORDER BY dataset DESC
EOF

		sqlite3 scans.db > prefetch.data <<EOF
.mode tab
.separator ' '
SELECT DISTINCT prefetch FROM results_${m} ORDER BY prefetch
EOF

		for sel in rows pages; do

			if [ "$sel" == "rows" ]; then
				D="100.0 * rows / total_rows"
				X="1"
				M="0.01"
			else
				X="2"
				D="100.0 * pages / total_pages"
				M="0.1"
			fi

			# min=$(sqlite3 scans.db "SELECT MIN($D) FROM results_${m}")

			for cache in cold warm; do

				if [ "$cache" == "cold" ]; then
					C="timing_cold"
					Y="3"
				else
					C="timing_warm"
					Y="4"
				fi

				sed "s/MACHINE/$m/" plot-optimal.template | sed "s/SEL/$sel/" | sed "s/CACHE/$cache/" | sed "s/SCALE/scaled/" | sed "s/BUFFERS/$sb/"  > $m-$sel-$cache-$sb-optimal.plot
				sed "s/MACHINE/$m/" plot-log-optimal.template | sed "s/SEL/$sel/" | sed "s/CACHE/$cache/" | sed "s/SCALE/scaled/" | sed "s/BUFFERS/$sb/" > $m-$sel-$cache-$sb-optimal-log.plot

				while IFS= read -r dataset; do

					max=$(sqlite3 scans.db "SELECT MAX($C) FROM results_${m} WHERE dataset = '$dataset'")

					ds=$(echo $dataset | sed 's/_/\\_/')

					while IFS= read -r prefetch; do

						echo "set xrange[$M:100]" >> $m-$sel-$cache-$sb-optimal.plot
						echo "set xrange[$M:100]" >> $m-$sel-$cache-$sb-optimal-log.plot

						echo "set yrange[0:$max]" >> $m-$sel-$cache-$sb-optimal.plot
						echo "set yrange[0.01:$max]" >> $m-$sel-$cache-$sb-optimal-log.plot

						echo "set title '$ds / eic=$prefetch' font 'Verdana Bold,12'" >> $m-$sel-$cache-$sb-optimal.plot
						echo "set title '$ds / eic=$prefetch' font 'Verdana Bold,12'" >> $m-$sel-$cache-$sb-optimal-log.plot

						sed "s/MACHINE/$m/" row-optimal.template | sed "s/X/$X/" | sed "s/Y/$Y/" | sed "s/PREFETCH/$prefetch/" | sed "s/DATASET/$ds/" | sed "s/BUFFERS/$sb/" >> $m-$sel-$cache-$sb-optimal.plot
						sed "s/MACHINE/$m/" row-optimal.template | sed "s/X/$X/" | sed "s/Y/$Y/" | sed "s/PREFETCH/$prefetch/" | sed "s/DATASET/$ds/" | sed "s/BUFFERS/$sb/" >> $m-$sel-$cache-$sb-optimal-log.plot

					done < prefetch.data

				done < datasets.data

				gnuplot $m-$sel-$cache-$sb-optimal.plot
				gnuplot $m-$sel-$cache-$sb-optimal-log.plot

			done

		done

	done

done
