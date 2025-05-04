#!/usr/bin/env bash

#MACHINES="xeon ryzen_nvme"
MACHINES="xeon ryzen_nvme ryzen_sata"
#MACHINES="xeon ryzen_sata"

rm -Rf data
mkdir data

rm -f scans.db
rm -f *.pdf *.plot

sqlite3 scans.db <<EOF
create table results_xeon (seq int, cnt int, dataset text, scan text, prefetch text, eic int, run int, io_method text, io_workers int, shared_buffers text, start_val int, end_val int, optimal text, total_rows int, rows int, total_pages int, pages int, timing_cold numeric, timing_warm numeric);
create table results_ryzen_nvme (seq int, cnt int, dataset text, scan text, prefetch text, eic int, run int, io_method text, io_workers int, shared_buffers text, start_val int, end_val int, optimal text, total_rows int, rows int, total_pages int, pages int, timing_cold numeric, timing_warm numeric);
create table results_ryzen_sata (seq int, cnt int, dataset text, scan text, prefetch int, eic int, run int, io_method text, io_workers int, shared_buffers text, start_val int, end_val int, optimal text, total_rows int, rows int, total_pages int, pages int, timing_cold numeric, timing_warm numeric);
-- create table results_xeon_2 (seq int, cnt int, dataset text, scan text, prefetch int, run int, io_method text, io_workers int, shared_buffers text, start_val int, end_val int, optimal text, total_rows int, rows int, total_pages int, pages int, timing_cold numeric, timing_warm numeric);
-- create table results_ryzen_nvme_2 (seq int, cnt int, dataset text, scan text, prefetch int, run int, io_method text, io_workers int, shared_buffers text, start_val int, end_val int, optimal text, total_rows int, rows int, total_pages int, pages int, timing_cold numeric, timing_warm numeric);
EOF

sqlite3 scans.db <<EOF
.mode csv
.separator ' '
.import ryzen-nvme.csv results_ryzen_nvme
--.import ryzen-nvme-smoothscan.csv results_ryzen_nvme
--.import ryzen-nvme-prefetch.csv results_ryzen_nvme_2
.import ryzen-sata.csv results_ryzen_sata
--.import ryzen-sata2.csv results_ryzen_sata
.import xeon.csv results_xeon
--.import xeon-smoothscan.csv results_xeon
--.import xeon-prefetch.csv results_xeon_2
--.import xeon2.csv results_xeon
EOF

sqlite3 scans.db <<EOF
--update results_ryzen_nvme_2 set scan = 'indexscan-prefetch';
--update results_xeon_2 set scan = 'indexscan-prefetch';
--insert into results_ryzen_nvme select * from results_ryzen_nvme_2;
--insert into results_xeon select * from results_xeon_2;
EOF

for m in $MACHINES; do

	rm -f tmp.data

	mkdir data/$m

	for sb in 4GB 32GB; do

		sqlite3 scans.db > tmp.data <<EOF
.mode tab
.separator ' '
SELECT DISTINCT dataset, scan, prefetch, eic, io_method, io_workers FROM results_${m}
EOF

		while IFS= read -r line; do

			IFS=' ' read -r -a strarray <<< "$line"

			dataset="${strarray[0]}"
			scan="${strarray[1]}"
			prefetch="${strarray[2]}"
			eic="${strarray[3]}"
			iomethod="${strarray[4]}"
			ioworkers="${strarray[5]}"

			sqlite3 scans.db > data/$m/$dataset-$scan-$prefetch-$eic-$iomethod-$ioworkers-$sb.data <<EOF
.mode tab
SELECT (rows * 100.0 / total_rows), (pages * 100.0 / total_pages), timing_cold, timing_warm FROM results_${m} WHERE dataset = '$dataset' AND scan = '$scan' AND prefetch = '$prefetch' AND eic = $eic AND io_method = '$iomethod' AND io_workers = $ioworkers AND shared_buffers = '$sb'
EOF

		done < tmp.data

		sqlite3 scans.db > tmp.data <<EOF
.mode tab
.separator ' '
SELECT DISTINCT dataset, scan, prefetch, eic, io_method, io_workers FROM results_${m}
EOF

		while IFS= read -r line; do

			IFS=' ' read -r -a strarray <<< "$line"

			dataset="${strarray[0]}"
			scan="${strarray[1]}"
			prefetch="${strarray[2]}"
			eic="${strarray[3]}"
			iomethod="${strarray[4]}"
			ioworkers="${strarray[5]}"

			for optimal in yes no; do

				sqlite3 scans.db > data/$m/$dataset-$scan-$prefetch-$eic-$sb-$optimal.data <<EOF
.mode tab
SELECT (rows * 100.0 / total_rows), (pages * 100.0 / total_pages), timing_cold, timing_warm FROM results_${m} WHERE dataset = '$dataset' AND scan = '$scan' AND prefetch = '$prefetch' AND eic = $eic AND shared_buffers = '$sb' AND optimal = '$optimal'
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
SELECT DISTINCT eic FROM results_${m} ORDER BY dataset DESC
EOF

		for sel in rows pages; do

			if [ "$sel" == "rows" ]; then
				D="100.0 * rows / total_rows"
				X="1"
			else
				X="2"
				D="100.0 * pages / total_pages"
			fi

			# min=$(sqlite3 scans.db "SELECT MIN($D) FROM results_${m}")

			for cache in cold warm; do

				while IFS= read -r eic; do

					if [ "$cache" == "cold" ]; then
						C="timing_cold"
						Y="3"
					else
						C="timing_warm"
						Y="4"
					fi

					#sed "s/MACHINE/$m/" plot.template | sed "s/SEL/$sel/" | sed "s/CACHE/$cache/" | sed "s/SCALE/raw/" > $m-$sel-$cache-raw.plot
					#sed "s/MACHINE/$m/" plot.template | sed "s/SEL/$sel/" | sed "s/CACHE/$cache/" | sed "s/SCALE/scaled/"  > $m-$sel-$cache-scaled.plot
					sed "s/MACHINE/$m/" plot.template | sed "s/SEL/$sel/" | sed "s/CACHE/$cache/" | sed "s/SCALE/scaled/" | sed "s/EIC/$eic/" | sed "s/BUFFERS/$sb/"  > $m-$sel-$cache-$sb-$eic.plot
					sed "s/MACHINE/$m/" plot-log.template | sed "s/SEL/$sel/" | sed "s/CACHE/$cache/" | sed "s/SCALE/scaled/" | sed "s/EIC/$eic/" | sed "s/BUFFERS/$sb/" > $m-$sel-$cache-$sb-$eic-log.plot

					while IFS= read -r dataset; do

						min=$(sqlite3 scans.db "SELECT MIN($D) FROM results_${m} WHERE dataset = '$dataset' AND pages > 0")
						max=$(sqlite3 scans.db "SELECT MAX($C) FROM results_${m} WHERE dataset = '$dataset'")

						#echo "set xrange[$M:100]" >> $m-$sel-$cache-raw.plot
						#echo "set xrange[$M:100]" >> $m-$sel-$cache-scaled.plot
						echo "set xrange[$min:100]" >> $m-$sel-$cache-$sb-$eic.plot
						echo "set xrange[$min:100]" >> $m-$sel-$cache-$sb-$eic-log.plot

						#echo "set yrange[0:$max]" >> $m-$sel-$cache-scaled.plot
						echo "set yrange[0:$max]" >> $m-$sel-$cache-$sb-$eic.plot
						echo "set yrange[0.01:$max]" >> $m-$sel-$cache-$sb-$eic-log.plot

						dataset=$(echo $dataset | sed 's/_/\\\\_/')

						#sed "s/MACHINE/$m/" row.template | sed "s/X/$X/" | sed "s/Y/$Y/" | sed "s/DATASET/$line/" >> $m-$sel-$cache-raw.plot
						#sed "s/MACHINE/$m/" row.template | sed "s/X/$X/" | sed "s/Y/$Y/" | sed "s/DATASET/$line/" >> $m-$sel-$cache-scaled.plot
						sed "s/MACHINE/$m/" row.template | sed "s/EIC/$eic/" | sed "s/X/$X/" | sed "s/Y/$Y/" | sed "s/DATASET/$dataset/" | sed "s/BUFFERS/$sb/" >> $m-$sel-$cache-$sb-$eic.plot
						sed "s/MACHINE/$m/" row.template | sed "s/EIC/$eic/" | sed "s/X/$X/" | sed "s/Y/$Y/" | sed "s/DATASET/$dataset/" | sed "s/BUFFERS/$sb/" >> $m-$sel-$cache-$sb-$eic-log.plot

					done < datasets.data

					#gnuplot $m-$sel-$cache-raw.plot
					#gnuplot $m-$sel-$cache-scaled.plot
					gnuplot $m-$sel-$cache-$sb-$eic.plot
					gnuplot $m-$sel-$cache-$sb-$eic-log.plot

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
SELECT DISTINCT eic FROM results_${m} ORDER BY eic
EOF

		for sel in rows pages; do

			if [ "$sel" == "rows" ]; then
				D="100.0 * rows / total_rows"
				X="1"
				M=""
			else
				X="2"
				D="100.0 * pages / total_pages"
				M=""
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

				sed "s/MACHINE/$m/" plot-optimal.template | sed "s/SEL/$sel/" | sed "s/CACHE/$cache/" | sed "s/SCALE/scaled/" | sed "s/EIC/$eic/" | sed "s/BUFFERS/$sb/"  > $m-$sel-$cache-$sb-optimal.plot
				sed "s/MACHINE/$m/" plot-log-optimal.template | sed "s/SEL/$sel/" | sed "s/CACHE/$cache/" | sed "s/SCALE/scaled/" | sed "s/EIC/$eic/" | sed "s/BUFFERS/$sb/" > $m-$sel-$cache-$sb-optimal-log.plot

				while IFS= read -r dataset; do

					min=$(sqlite3 scans.db "SELECT MIN($D) FROM results_${m} WHERE dataset = '$dataset' AND pages > 0")
					max=$(sqlite3 scans.db "SELECT MAX($C) FROM results_${m} WHERE dataset = '$dataset'")

					ds=$(echo $dataset | sed 's/_/\\_/')

					while IFS= read -r eic; do

						echo "set xrange[$min:100]" >> $m-$sel-$cache-$sb-optimal.plot
						echo "set xrange[$min:100]" >> $m-$sel-$cache-$sb-optimal-log.plot

						echo "set yrange[0:$max]" >> $m-$sel-$cache-$sb-optimal.plot
						echo "set yrange[0.01:$max]" >> $m-$sel-$cache-$sb-optimal-log.plot

						echo "set title '$ds / eic=$eic' font 'Verdana Bold,12'" >> $m-$sel-$cache-$sb-optimal.plot
						echo "set title '$ds / eic=$eic' font 'Verdana Bold,12'" >> $m-$sel-$cache-$sb-optimal-log.plot

						sed "s/MACHINE/$m/" row-optimal.template | sed "s/EIC/$eic/" | sed "s/X/$X/" | sed "s/Y/$Y/" | sed "s/EIC/$eic/" | sed "s/PREFETCH/$prefetch/" | sed "s/DATASET/$ds/" | sed "s/BUFFERS/$sb/" >> $m-$sel-$cache-$sb-optimal.plot
						sed "s/MACHINE/$m/" row-optimal.template | sed "s/EIC/$eic/" | sed "s/X/$X/" | sed "s/Y/$Y/" | sed "s/EIC/$eic/" | sed "s/PREFETCH/$prefetch/" | sed "s/DATASET/$ds/" | sed "s/BUFFERS/$sb/" >> $m-$sel-$cache-$sb-optimal-log.plot

					done < prefetch.data

				done < datasets.data

				gnuplot $m-$sel-$cache-$sb-optimal.plot
				gnuplot $m-$sel-$cache-$sb-optimal-log.plot

			done

		done

	done

done
