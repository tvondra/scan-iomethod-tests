#!/usr/bin/env bash

rm -Rf data
mkdir data

rm -f scans.db
rm -f *.pdf *.plot

sqlite3 scans.db <<EOF
create table results_xeon (cnt int, dataset text, scan text, prefetch int, run int, io_method text, start_val int, end_val int, total_rows int, rows int, total_pages int, pages int, timing_cold numeric, timing_warm numeric);
create table results_ryzen_nvme (cnt int, dataset text, scan text, prefetch int, run int, io_method text, start_val int, end_val int, total_rows int, rows int, total_pages int, pages int, timing_cold numeric, timing_warm numeric);
create table results_ryzen_sata (cnt int, dataset text, scan text, prefetch int, run int, io_method text, start_val int, end_val int, total_rows int, rows int, total_pages int, pages int, timing_cold numeric, timing_warm numeric);
EOF

sqlite3 scans.db <<EOF
.mode csv
.separator ' '
.import ryzen-nvme.csv results_ryzen_nvme
.import ryzen-sata.csv results_ryzen_sata
.import xeon.csv results_xeon
EOF


for m in xeon ryzen_nvme ryzen_sata; do

	rm -f tmp.data

	mkdir data/$m

	sqlite3 scans.db > tmp.data <<EOF
.mode tab
.separator ' '
SELECT DISTINCT dataset, scan, prefetch, io_method FROM results_${m}
EOF

	while IFS= read -r line; do

		IFS=' ' read -r -a strarray <<< "$line"

		dataset="${strarray[0]}"
		scan="${strarray[1]}"
		prefetch="${strarray[2]}"
		iomethod="${strarray[3]}"

		sqlite3 scans.db > data/$m/$dataset-$scan-$prefetch-$iomethod.data <<EOF
.mode tab
SELECT (rows * 100.0 / total_rows), (pages * 100.0 / total_pages), timing_cold, timing_warm FROM results_${m} WHERE dataset = '$dataset' AND scan = '$scan' AND prefetch = $prefetch AND io_method = '$iomethod'
EOF

	done < tmp.data

done

for m in xeon ryzen_nvme ryzen_sata; do

	sqlite3 scans.db > datasets.data <<EOF
.mode tab
.separator ' '
SELECT DISTINCT dataset FROM results_${m} ORDER BY dataset DESC
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

			#sed "s/MACHINE/$m/" plot.template | sed "s/SEL/$sel/" | sed "s/CACHE/$cache/" | sed "s/SCALE/raw/" > $m-$sel-$cache-raw.plot
			#sed "s/MACHINE/$m/" plot.template | sed "s/SEL/$sel/" | sed "s/CACHE/$cache/" | sed "s/SCALE/scaled/"  > $m-$sel-$cache-scaled.plot
			sed "s/MACHINE/$m/" plot.template | sed "s/SEL/$sel/" | sed "s/CACHE/$cache/" | sed "s/SCALE/scaled/"  > $m-$sel-$cache.plot
			sed "s/MACHINE/$m/" plot-log.template | sed "s/SEL/$sel/" | sed "s/CACHE/$cache/" | sed "s/SCALE/scaled/"  > $m-$sel-$cache-log.plot

			while IFS= read -r line; do

				max=$(sqlite3 scans.db "SELECT MAX($C) FROM results_${m} WHERE dataset = '$line'")

				#echo "set xrange[$M:100]" >> $m-$sel-$cache-raw.plot
				#echo "set xrange[$M:100]" >> $m-$sel-$cache-scaled.plot
				echo "set xrange[$M:100]" >> $m-$sel-$cache.plot
				echo "set xrange[$M:100]" >> $m-$sel-$cache-log.plot

				#echo "set yrange[0:$max]" >> $m-$sel-$cache-scaled.plot
				echo "set yrange[0:$max]" >> $m-$sel-$cache.plot
				echo "set yrange[0.01:$max]" >> $m-$sel-$cache-log.plot

				line=$(echo $line | sed 's/_/\\\\_/')

				#sed "s/MACHINE/$m/" row.template | sed "s/X/$X/" | sed "s/Y/$Y/" | sed "s/DATASET/$line/" >> $m-$sel-$cache-raw.plot
				#sed "s/MACHINE/$m/" row.template | sed "s/X/$X/" | sed "s/Y/$Y/" | sed "s/DATASET/$line/" >> $m-$sel-$cache-scaled.plot
				sed "s/MACHINE/$m/" row.template | sed "s/X/$X/" | sed "s/Y/$Y/" | sed "s/DATASET/$line/" >> $m-$sel-$cache.plot
				sed "s/MACHINE/$m/" row.template | sed "s/X/$X/" | sed "s/Y/$Y/" | sed "s/DATASET/$line/" >> $m-$sel-$cache-log.plot

			done < datasets.data

			#gnuplot $m-$sel-$cache-raw.plot
			#gnuplot $m-$sel-$cache-scaled.plot
			gnuplot $m-$sel-$cache.plot
			gnuplot $m-$sel-$cache-log.plot

		done

	done

done
