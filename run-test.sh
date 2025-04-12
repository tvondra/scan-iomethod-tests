#!/usr/bin/env bash

DB=$1
DATADIR=$2
TIMEOUT=$3

set -e

# size of the range (number of values), determines selectivity
rm -f test.csv
cnt=0
while /bin/true; do

	delta=$((cnt/2))

	if [[ $delta -lt 1 ]]; then
		delta=1
	elif [[ $delta -gt 50 ]]; then
		delta=50
	fi

	cnt=$((cnt+delta))

	if [[ $cnt -gt 1000 ]]; then
		break
	fi

	# which dataset to query
	for dataset in uniform linear linear_1 linear_10 linear_100 linear_500 cyclic cyclic_1 cyclic_10 cyclic_100 cyclic_500; do

		tuples_total=$(psql $DB -t -A -c "SELECT reltuples::bigint FROM pg_class WHERE relname = 'smoothscan_${dataset}'")
		pages_total=$(psql $DB -t -A -c "SELECT relpages FROM pg_class WHERE relname = 'smoothscan_${dataset}'")

		for scan in indexscan bitmapscan seqscan; do

			for prefetch in 0 16 128; do

				# only bitmapscan supports prefetching
				#if [ "$prefetch" == "16" ] && [ "$scan" != "bitmapscan" ]; then
				#	continue
				#fi

				# test all the interesting I/O methods
				for iomethod in worker io_uring sync; do

					for ioworkers in 3 12; do

						# only 'worker' method supports changing workers
						if [ "$iomethod" != "worker" ] && [ "$ioworkers" != "3" ]; then
							continue
						fi

						for shared_buffers in 4GB 32GB; do

							echo $cnt $dataset $scan $prefetch $iomethod $ioworkers $shared_buffers $tuples_total $pages_total >> test.csv

						done

					done

				done

			done

		done

	done

done

# do a bunch of runs for each selectivity
id=0
for r in $(seq 1 5); do

	sort -R test.csv > test.random

	while IFS= read -r line; do

		IFS=', ' read -r -a strarray <<< "$line"

		cnt="${strarray[0]}"
		dataset="${strarray[1]}"
		scan="${strarray[2]}"
		prefetch="${strarray[3]}"
		iomethod="${strarray[4]}"
		ioworkers="${strarray[5]}"
		shared_buffers="${strarray[6]}"
		tuples_total="${strarray[7]}"
		pages_total="${strarray[8]}"

		id=$((id+1))

		bitmapscan=off;
		indexscan=off;
		seqscan=off;

		if [ "$scan" == "bitmapscan" ]; then
			bitmapscan=on;
		elif [ "$scan" == "indexscan" ]; then
			indexscan=on
		elif [ "$scan" == "seqscan" ]; then
			seqscan=on
		fi

		# maxval to pick at random
		m=$((1000 - $cnt))

		# pick [start,end] so that it's within [0,1000]
		start=$((RANDOM % m))
		end=$((start + cnt))

		psql $DB -c "ALTER SYSTEM SET io_method = $iomethod"
		psql $DB -c "ALTER SYSTEM SET io_workers = $ioworkers"
		psql $DB -c "ALTER SYSTEM SET shared_buffers = '$shared_buffers'"

		# restart the DB, drop caches, so that we have clean starting point
		pg_ctl -D $DATADIR -l pg.log restart
		sudo ./drop-caches.sh

		psql $DB > tmp.log 2>&1 <<EOF
SET max_parallel_workers_per_gather = 0;
SET effective_io_concurrency = $prefetch;
EXPLAIN (COSTS OFF) SELECT * FROM smoothscan_${dataset} WHERE a BETWEEN $start AND $end;
EOF

		if [ "$scan" == "bitmapscan" ]; then
			c=$(grep '^ Bitmap Heap Scan' tmp.log | wc -l)
		elif [ "$scan" == "indexscan" ]; then
			c=$(grep '^ Index Scan' tmp.log | wc -l)
		elif [ "$scan" == "seqscan" ]; then
			c=$(grep '^ Seq Scan' tmp.log | wc -l)
		fi

		if [ "$c" == "1" ]; then
			optimal='yes'
		else
			optimal='no'
		fi

		# run with cold caches
		psql $DB > tmp.log 2>&1 <<EOF
SET max_parallel_workers_per_gather = 0;
SET enable_indexscan = $indexscan;
SET enable_bitmapscan = $bitmapscan;
SET enable_seqscan = $seqscan;
SET effective_io_concurrency = $prefetch;
SET statement_timeout = $TIMEOUT;
\timing on
EXPLAIN (ANALYZE, TIMING OFF, SETTINGS ON) SELECT * FROM smoothscan_${dataset} WHERE a BETWEEN $start AND $end;
EOF

		c=$(grep 'canceling statement' tmp.log | wc -l)

		if [ "$c" == "1" ]; then
			time_uncached="-1"
		else
			time_uncached=$(grep '^Time:' tmp.log | awk '{print $2}')
		fi

		echo "===== $id / cold =====" >> explains.log
		cat tmp.log >> explains.log

		# run again, with warm caches
		psql $DB > tmp.log 2>&1 <<EOF
SET max_parallel_workers_per_gather = 0;
SET enable_indexscan = $indexscan;
SET enable_bitmapscan = $bitmapscan;
SET enable_seqscan = $seqscan;
SET effective_io_concurrency = $prefetch;
SET statement_timeout = $TIMEOUT;
\timing on
EXPLAIN (ANALYZE, TIMING OFF, SETTINGS ON) SELECT * FROM smoothscan_${dataset} WHERE a BETWEEN $start AND $end;
EOF

		c=$(grep 'canceling statement' tmp.log | wc -l)

		if [ "$c" == "1" ]; then
			time_cached="-1"
		else
			time_cached=$(grep '^Time:' tmp.log | awk '{print $2}')
		fi

		echo "===== $id / warm =====" >> explains.log
		cat tmp.log >> explains.log

		# count matching tuples and pages (condition is random, better get precise result)
		tuples=$(psql $DB -t -A -c "SELECT COUNT(*) FROM smoothscan_${dataset} WHERE a BETWEEN $start AND $end")
		pages=$(psql $DB -t -A -c "SELECT COUNT(DISTINCT (ctid::text::point)[0]) FROM smoothscan_${dataset} WHERE a BETWEEN $start AND $end")

		echo $id $cnt $dataset $scan $prefetch $r $iomethod $ioworkers $shared_buffers $start $end $optimal $tuples_total $tuples $pages_total $pages $time_uncached $time_cached >> results.csv

	done < test.random

done
