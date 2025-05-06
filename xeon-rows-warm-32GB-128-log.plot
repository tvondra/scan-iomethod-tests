set terminal pdfcairo size 25,35 enhanced font 'Verdana,12'
set output 'xeon-rows-warm-32GB-128-log.pdf'
#set output 'xeon-rows-warm-32GB-log.pdf'


set log x
set log y
set yrange [0.01:]
set key bottom right

set xlabel 'selectivity'

set multiplot layout 9,5 rowsfirst
set xrange[0.000729999416000467:100]
set yrange[0.01:23232.677]
set title 'uniform / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/uniform-bitmapscan-off-128-io_uring-3-32GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/uniform-bitmapscan-off-128-sync-3-32GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/uniform-bitmapscan-off-128-worker-3-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/uniform-bitmapscan-off-128-worker-12-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/xeon/uniform-bitmapscan-17-off-128-sync-0-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "17"

unset ylabel

set title 'uniform / indexscan'

plot  "data/xeon/uniform-indexscan-off-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/uniform-indexscan-off-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/uniform-indexscan-off-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/uniform-indexscan-off-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/xeon/uniform-indexscan-17-off-128-sync-0-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "17"

set title 'uniform / indexscan (prefetch)'

plot  "data/xeon/uniform-indexscan-on-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/uniform-indexscan-on-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/uniform-indexscan-on-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/uniform-indexscan-on-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'uniform / seqscan'

plot "data/xeon/uniform-seqscan-off-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/uniform-seqscan-off-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/uniform-seqscan-off-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/uniform-seqscan-off-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/xeon/uniform-seqscan-17-off-128-sync-0-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "17"

set title 'uniform / smoothscan'

plot "data/xeon/uniform-smoothscan-off-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/uniform-smoothscan-off-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/uniform-smoothscan-off-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/uniform-smoothscan-off-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.000419999664000269:100]
set yrange[0.01:14811.462]
set title 'linear\_25 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/linear\_25-bitmapscan-off-128-io_uring-3-32GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_25-bitmapscan-off-128-sync-3-32GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_25-bitmapscan-off-128-worker-3-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_25-bitmapscan-off-128-worker-12-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/xeon/linear\_25-bitmapscan-17-off-128-sync-0-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "17"

unset ylabel

set title 'linear\_25 / indexscan'

plot  "data/xeon/linear\_25-indexscan-off-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_25-indexscan-off-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_25-indexscan-off-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_25-indexscan-off-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/xeon/linear\_25-indexscan-17-off-128-sync-0-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "17"

set title 'linear\_25 / indexscan (prefetch)'

plot  "data/xeon/linear\_25-indexscan-on-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_25-indexscan-on-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_25-indexscan-on-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_25-indexscan-on-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_25 / seqscan'

plot "data/xeon/linear\_25-seqscan-off-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_25-seqscan-off-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_25-seqscan-off-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_25-seqscan-off-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/xeon/linear\_25-seqscan-17-off-128-sync-0-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "17"

set title 'linear\_25 / smoothscan'

plot "data/xeon/linear\_25-smoothscan-off-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_25-smoothscan-off-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_25-smoothscan-off-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_25-smoothscan-off-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.000519999584000333:100]
set yrange[0.01:16485.321]
set title 'linear\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/linear\_10-bitmapscan-off-128-io_uring-3-32GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_10-bitmapscan-off-128-sync-3-32GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_10-bitmapscan-off-128-worker-3-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_10-bitmapscan-off-128-worker-12-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/xeon/linear\_10-bitmapscan-17-off-128-sync-0-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "17"

unset ylabel

set title 'linear\_10 / indexscan'

plot  "data/xeon/linear\_10-indexscan-off-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_10-indexscan-off-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_10-indexscan-off-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_10-indexscan-off-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/xeon/linear\_10-indexscan-17-off-128-sync-0-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "17"

set title 'linear\_10 / indexscan (prefetch)'

plot  "data/xeon/linear\_10-indexscan-on-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_10-indexscan-on-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_10-indexscan-on-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_10-indexscan-on-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_10 / seqscan'

plot "data/xeon/linear\_10-seqscan-off-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_10-seqscan-off-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_10-seqscan-off-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_10-seqscan-off-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/xeon/linear\_10-seqscan-17-off-128-sync-0-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "17"

set title 'linear\_10 / smoothscan'

plot "data/xeon/linear\_10-smoothscan-off-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_10-smoothscan-off-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_10-smoothscan-off-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_10-smoothscan-off-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.000619999504000397:100]
set yrange[0.01:16692.722]
set title 'linear\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/linear\_1-bitmapscan-off-128-io_uring-3-32GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_1-bitmapscan-off-128-sync-3-32GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_1-bitmapscan-off-128-worker-3-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_1-bitmapscan-off-128-worker-12-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/xeon/linear\_1-bitmapscan-17-off-128-sync-0-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "17"

unset ylabel

set title 'linear\_1 / indexscan'

plot  "data/xeon/linear\_1-indexscan-off-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_1-indexscan-off-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_1-indexscan-off-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_1-indexscan-off-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/xeon/linear\_1-indexscan-17-off-128-sync-0-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "17"

set title 'linear\_1 / indexscan (prefetch)'

plot  "data/xeon/linear\_1-indexscan-on-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_1-indexscan-on-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_1-indexscan-on-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_1-indexscan-on-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_1 / seqscan'

plot "data/xeon/linear\_1-seqscan-off-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_1-seqscan-off-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_1-seqscan-off-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_1-seqscan-off-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/xeon/linear\_1-seqscan-17-off-128-sync-0-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "17"

set title 'linear\_1 / smoothscan'

plot "data/xeon/linear\_1-smoothscan-off-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_1-smoothscan-off-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_1-smoothscan-off-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_1-smoothscan-off-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.00099999920000064:100]
set yrange[0.01:16614.098]
set title 'linear / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/linear-bitmapscan-off-128-io_uring-3-32GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear-bitmapscan-off-128-sync-3-32GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear-bitmapscan-off-128-worker-3-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear-bitmapscan-off-128-worker-12-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/xeon/linear-bitmapscan-17-off-128-sync-0-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "17"

unset ylabel

set title 'linear / indexscan'

plot  "data/xeon/linear-indexscan-off-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear-indexscan-off-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear-indexscan-off-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear-indexscan-off-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/xeon/linear-indexscan-17-off-128-sync-0-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "17"

set title 'linear / indexscan (prefetch)'

plot  "data/xeon/linear-indexscan-on-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear-indexscan-on-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear-indexscan-on-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear-indexscan-on-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear / seqscan'

plot "data/xeon/linear-seqscan-off-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear-seqscan-off-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear-seqscan-off-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear-seqscan-off-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/xeon/linear-seqscan-17-off-128-sync-0-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "17"

set title 'linear / smoothscan'

plot "data/xeon/linear-smoothscan-off-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear-smoothscan-off-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear-smoothscan-off-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear-smoothscan-off-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.000329999736000211:100]
set yrange[0.01:14730.253]
set title 'cyclic\_25 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/cyclic\_25-bitmapscan-off-128-io_uring-3-32GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_25-bitmapscan-off-128-sync-3-32GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_25-bitmapscan-off-128-worker-3-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_25-bitmapscan-off-128-worker-12-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/xeon/cyclic\_25-bitmapscan-17-off-128-sync-0-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "17"

unset ylabel

set title 'cyclic\_25 / indexscan'

plot  "data/xeon/cyclic\_25-indexscan-off-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_25-indexscan-off-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_25-indexscan-off-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_25-indexscan-off-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/xeon/cyclic\_25-indexscan-17-off-128-sync-0-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "17"

set title 'cyclic\_25 / indexscan (prefetch)'

plot  "data/xeon/cyclic\_25-indexscan-on-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_25-indexscan-on-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_25-indexscan-on-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_25-indexscan-on-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_25 / seqscan'

plot "data/xeon/cyclic\_25-seqscan-off-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_25-seqscan-off-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_25-seqscan-off-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_25-seqscan-off-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/xeon/cyclic\_25-seqscan-17-off-128-sync-0-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "17"

set title 'cyclic\_25 / smoothscan'

plot "data/xeon/cyclic\_25-smoothscan-off-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_25-smoothscan-off-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_25-smoothscan-off-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_25-smoothscan-off-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.000409999672000262:100]
set yrange[0.01:16718.713]
set title 'cyclic\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/cyclic\_10-bitmapscan-off-128-io_uring-3-32GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_10-bitmapscan-off-128-sync-3-32GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_10-bitmapscan-off-128-worker-3-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_10-bitmapscan-off-128-worker-12-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/xeon/cyclic\_10-bitmapscan-17-off-128-sync-0-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "17"

unset ylabel

set title 'cyclic\_10 / indexscan'

plot  "data/xeon/cyclic\_10-indexscan-off-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_10-indexscan-off-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_10-indexscan-off-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_10-indexscan-off-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/xeon/cyclic\_10-indexscan-17-off-128-sync-0-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "17"

set title 'cyclic\_10 / indexscan (prefetch)'

plot  "data/xeon/cyclic\_10-indexscan-on-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_10-indexscan-on-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_10-indexscan-on-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_10-indexscan-on-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_10 / seqscan'

plot "data/xeon/cyclic\_10-seqscan-off-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_10-seqscan-off-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_10-seqscan-off-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_10-seqscan-off-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/xeon/cyclic\_10-seqscan-17-off-128-sync-0-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "17"

set title 'cyclic\_10 / smoothscan'

plot "data/xeon/cyclic\_10-smoothscan-off-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_10-smoothscan-off-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_10-smoothscan-off-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_10-smoothscan-off-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.000469999624000301:100]
set yrange[0.01:18181.919]
set title 'cyclic\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/cyclic\_1-bitmapscan-off-128-io_uring-3-32GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_1-bitmapscan-off-128-sync-3-32GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_1-bitmapscan-off-128-worker-3-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_1-bitmapscan-off-128-worker-12-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/xeon/cyclic\_1-bitmapscan-17-off-128-sync-0-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "17"

unset ylabel

set title 'cyclic\_1 / indexscan'

plot  "data/xeon/cyclic\_1-indexscan-off-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_1-indexscan-off-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_1-indexscan-off-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_1-indexscan-off-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/xeon/cyclic\_1-indexscan-17-off-128-sync-0-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "17"

set title 'cyclic\_1 / indexscan (prefetch)'

plot  "data/xeon/cyclic\_1-indexscan-on-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_1-indexscan-on-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_1-indexscan-on-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_1-indexscan-on-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_1 / seqscan'

plot "data/xeon/cyclic\_1-seqscan-off-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_1-seqscan-off-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_1-seqscan-off-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_1-seqscan-off-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/xeon/cyclic\_1-seqscan-17-off-128-sync-0-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "17"

set title 'cyclic\_1 / smoothscan'

plot "data/xeon/cyclic\_1-smoothscan-off-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_1-smoothscan-off-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_1-smoothscan-off-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_1-smoothscan-off-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.00099999920000064:100]
set yrange[0.01:13410.626]
set title 'cyclic / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/cyclic-bitmapscan-off-128-io_uring-3-32GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic-bitmapscan-off-128-sync-3-32GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic-bitmapscan-off-128-worker-3-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic-bitmapscan-off-128-worker-12-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/xeon/cyclic-bitmapscan-17-off-128-sync-0-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "17"

unset ylabel

set title 'cyclic / indexscan'

plot  "data/xeon/cyclic-indexscan-off-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic-indexscan-off-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic-indexscan-off-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic-indexscan-off-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/xeon/cyclic-indexscan-17-off-128-sync-0-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "17"

set title 'cyclic / indexscan (prefetch)'

plot  "data/xeon/cyclic-indexscan-on-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic-indexscan-on-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic-indexscan-on-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic-indexscan-on-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic / seqscan'

plot "data/xeon/cyclic-seqscan-off-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic-seqscan-off-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic-seqscan-off-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic-seqscan-off-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/xeon/cyclic-seqscan-17-off-128-sync-0-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "17"

set title 'cyclic / smoothscan'

plot "data/xeon/cyclic-smoothscan-off-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic-smoothscan-off-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic-smoothscan-off-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic-smoothscan-off-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
