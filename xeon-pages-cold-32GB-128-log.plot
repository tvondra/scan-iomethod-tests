set terminal pdfcairo size 25,35 enhanced font 'Verdana,12'
set output 'xeon-pages-cold-32GB-128-log.pdf'
#set output 'xeon-pages-cold-32GB-log.pdf'


set log x
set log y
set yrange [0.01:]
set key bottom right

set xlabel 'selectivity'

set multiplot layout 9,5 rowsfirst
set xrange[0.0143999884800092:100]
set yrange[0.01:54127.22]
set title 'uniform / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/uniform-bitmapscan-off-128-io_uring-3-32GB.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/uniform-bitmapscan-off-128-sync-3-32GB.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/uniform-bitmapscan-off-128-worker-3-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/uniform-bitmapscan-off-128-worker-12-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'uniform / indexscan'

plot  "data/xeon/uniform-indexscan-off-128-io_uring-3-32GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/uniform-indexscan-off-128-sync-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/uniform-indexscan-off-128-worker-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/uniform-indexscan-off-128-worker-12-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'uniform / indexscan (prefetch)'

plot  "data/xeon/uniform-indexscan-on-128-io_uring-3-32GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/uniform-indexscan-on-128-sync-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/uniform-indexscan-on-128-worker-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/uniform-indexscan-on-128-worker-12-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'uniform / seqscan'

plot "data/xeon/uniform-seqscan-off-128-io_uring-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/uniform-seqscan-off-128-sync-3-32GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/uniform-seqscan-off-128-worker-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/uniform-seqscan-off-128-worker-12-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'uniform / smoothscan'

plot "data/xeon/uniform-smoothscan-off-128-io_uring-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/uniform-smoothscan-off-128-sync-3-32GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/uniform-smoothscan-off-128-worker-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/uniform-smoothscan-off-128-worker-12-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.00755999395200484:100]
set yrange[0.01:49488.764]
set title 'linear\_25 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/linear\_25-bitmapscan-off-128-io_uring-3-32GB.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_25-bitmapscan-off-128-sync-3-32GB.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_25-bitmapscan-off-128-worker-3-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_25-bitmapscan-off-128-worker-12-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear\_25 / indexscan'

plot  "data/xeon/linear\_25-indexscan-off-128-io_uring-3-32GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_25-indexscan-off-128-sync-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_25-indexscan-off-128-worker-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_25-indexscan-off-128-worker-12-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_25 / indexscan (prefetch)'

plot  "data/xeon/linear\_25-indexscan-on-128-io_uring-3-32GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_25-indexscan-on-128-sync-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_25-indexscan-on-128-worker-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_25-indexscan-on-128-worker-12-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_25 / seqscan'

plot "data/xeon/linear\_25-seqscan-off-128-io_uring-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_25-seqscan-off-128-sync-3-32GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_25-seqscan-off-128-worker-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_25-seqscan-off-128-worker-12-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_25 / smoothscan'

plot "data/xeon/linear\_25-smoothscan-off-128-io_uring-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_25-smoothscan-off-128-sync-3-32GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_25-smoothscan-off-128-worker-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_25-smoothscan-off-128-worker-12-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.00935999251200599:100]
set yrange[0.01:58858.354]
set title 'linear\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/linear\_10-bitmapscan-off-128-io_uring-3-32GB.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_10-bitmapscan-off-128-sync-3-32GB.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_10-bitmapscan-off-128-worker-3-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_10-bitmapscan-off-128-worker-12-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear\_10 / indexscan'

plot  "data/xeon/linear\_10-indexscan-off-128-io_uring-3-32GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_10-indexscan-off-128-sync-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_10-indexscan-off-128-worker-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_10-indexscan-off-128-worker-12-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_10 / indexscan (prefetch)'

plot  "data/xeon/linear\_10-indexscan-on-128-io_uring-3-32GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_10-indexscan-on-128-sync-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_10-indexscan-on-128-worker-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_10-indexscan-on-128-worker-12-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_10 / seqscan'

plot "data/xeon/linear\_10-seqscan-off-128-io_uring-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_10-seqscan-off-128-sync-3-32GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_10-seqscan-off-128-worker-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_10-seqscan-off-128-worker-12-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_10 / smoothscan'

plot "data/xeon/linear\_10-smoothscan-off-128-io_uring-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_10-smoothscan-off-128-sync-3-32GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_10-smoothscan-off-128-worker-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_10-smoothscan-off-128-worker-12-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.0111599910720071:100]
set yrange[0.01:58448.129]
set title 'linear\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/linear\_1-bitmapscan-off-128-io_uring-3-32GB.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_1-bitmapscan-off-128-sync-3-32GB.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_1-bitmapscan-off-128-worker-3-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_1-bitmapscan-off-128-worker-12-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear\_1 / indexscan'

plot  "data/xeon/linear\_1-indexscan-off-128-io_uring-3-32GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_1-indexscan-off-128-sync-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_1-indexscan-off-128-worker-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_1-indexscan-off-128-worker-12-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_1 / indexscan (prefetch)'

plot  "data/xeon/linear\_1-indexscan-on-128-io_uring-3-32GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_1-indexscan-on-128-sync-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_1-indexscan-on-128-worker-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_1-indexscan-on-128-worker-12-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_1 / seqscan'

plot "data/xeon/linear\_1-seqscan-off-128-io_uring-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_1-seqscan-off-128-sync-3-32GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_1-seqscan-off-128-worker-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_1-seqscan-off-128-worker-12-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_1 / smoothscan'

plot "data/xeon/linear\_1-smoothscan-off-128-io_uring-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_1-smoothscan-off-128-sync-3-32GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_1-smoothscan-off-128-worker-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_1-smoothscan-off-128-worker-12-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.00107999913600069:100]
set yrange[0.01:20423.921]
set title 'linear / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/linear-bitmapscan-off-128-io_uring-3-32GB.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear-bitmapscan-off-128-sync-3-32GB.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear-bitmapscan-off-128-worker-3-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear-bitmapscan-off-128-worker-12-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear / indexscan'

plot  "data/xeon/linear-indexscan-off-128-io_uring-3-32GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear-indexscan-off-128-sync-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear-indexscan-off-128-worker-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear-indexscan-off-128-worker-12-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear / indexscan (prefetch)'

plot  "data/xeon/linear-indexscan-on-128-io_uring-3-32GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear-indexscan-on-128-sync-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear-indexscan-on-128-worker-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear-indexscan-on-128-worker-12-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear / seqscan'

plot "data/xeon/linear-seqscan-off-128-io_uring-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear-seqscan-off-128-sync-3-32GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear-seqscan-off-128-worker-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear-seqscan-off-128-worker-12-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear / smoothscan'

plot "data/xeon/linear-smoothscan-off-128-io_uring-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear-smoothscan-off-128-sync-3-32GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear-smoothscan-off-128-worker-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear-smoothscan-off-128-worker-12-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.0059399952480038:100]
set yrange[0.01:49491.263]
set title 'cyclic\_25 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/cyclic\_25-bitmapscan-off-128-io_uring-3-32GB.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_25-bitmapscan-off-128-sync-3-32GB.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_25-bitmapscan-off-128-worker-3-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_25-bitmapscan-off-128-worker-12-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic\_25 / indexscan'

plot  "data/xeon/cyclic\_25-indexscan-off-128-io_uring-3-32GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_25-indexscan-off-128-sync-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_25-indexscan-off-128-worker-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_25-indexscan-off-128-worker-12-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_25 / indexscan (prefetch)'

plot  "data/xeon/cyclic\_25-indexscan-on-128-io_uring-3-32GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_25-indexscan-on-128-sync-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_25-indexscan-on-128-worker-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_25-indexscan-on-128-worker-12-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_25 / seqscan'

plot "data/xeon/cyclic\_25-seqscan-off-128-io_uring-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_25-seqscan-off-128-sync-3-32GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_25-seqscan-off-128-worker-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_25-seqscan-off-128-worker-12-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_25 / smoothscan'

plot "data/xeon/cyclic\_25-smoothscan-off-128-io_uring-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_25-smoothscan-off-128-sync-3-32GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_25-smoothscan-off-128-worker-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_25-smoothscan-off-128-worker-12-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.00737999409600472:100]
set yrange[0.01:53260.35]
set title 'cyclic\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/cyclic\_10-bitmapscan-off-128-io_uring-3-32GB.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_10-bitmapscan-off-128-sync-3-32GB.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_10-bitmapscan-off-128-worker-3-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_10-bitmapscan-off-128-worker-12-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic\_10 / indexscan'

plot  "data/xeon/cyclic\_10-indexscan-off-128-io_uring-3-32GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_10-indexscan-off-128-sync-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_10-indexscan-off-128-worker-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_10-indexscan-off-128-worker-12-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_10 / indexscan (prefetch)'

plot  "data/xeon/cyclic\_10-indexscan-on-128-io_uring-3-32GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_10-indexscan-on-128-sync-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_10-indexscan-on-128-worker-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_10-indexscan-on-128-worker-12-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_10 / seqscan'

plot "data/xeon/cyclic\_10-seqscan-off-128-io_uring-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_10-seqscan-off-128-sync-3-32GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_10-seqscan-off-128-worker-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_10-seqscan-off-128-worker-12-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_10 / smoothscan'

plot "data/xeon/cyclic\_10-smoothscan-off-128-io_uring-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_10-smoothscan-off-128-sync-3-32GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_10-smoothscan-off-128-worker-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_10-smoothscan-off-128-worker-12-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.0107999913600069:100]
set yrange[0.01:53841.088]
set title 'cyclic\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/cyclic\_1-bitmapscan-off-128-io_uring-3-32GB.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_1-bitmapscan-off-128-sync-3-32GB.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_1-bitmapscan-off-128-worker-3-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_1-bitmapscan-off-128-worker-12-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic\_1 / indexscan'

plot  "data/xeon/cyclic\_1-indexscan-off-128-io_uring-3-32GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_1-indexscan-off-128-sync-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_1-indexscan-off-128-worker-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_1-indexscan-off-128-worker-12-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_1 / indexscan (prefetch)'

plot  "data/xeon/cyclic\_1-indexscan-on-128-io_uring-3-32GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_1-indexscan-on-128-sync-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_1-indexscan-on-128-worker-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_1-indexscan-on-128-worker-12-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_1 / seqscan'

plot "data/xeon/cyclic\_1-seqscan-off-128-io_uring-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_1-seqscan-off-128-sync-3-32GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_1-seqscan-off-128-worker-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_1-seqscan-off-128-worker-12-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_1 / smoothscan'

plot "data/xeon/cyclic\_1-smoothscan-off-128-io_uring-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_1-smoothscan-off-128-sync-3-32GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_1-smoothscan-off-128-worker-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_1-smoothscan-off-128-worker-12-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.0179999856000115:100]
set yrange[0.01:34921.371]
set title 'cyclic / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/cyclic-bitmapscan-off-128-io_uring-3-32GB.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic-bitmapscan-off-128-sync-3-32GB.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic-bitmapscan-off-128-worker-3-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic-bitmapscan-off-128-worker-12-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic / indexscan'

plot  "data/xeon/cyclic-indexscan-off-128-io_uring-3-32GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic-indexscan-off-128-sync-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic-indexscan-off-128-worker-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic-indexscan-off-128-worker-12-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic / indexscan (prefetch)'

plot  "data/xeon/cyclic-indexscan-on-128-io_uring-3-32GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic-indexscan-on-128-sync-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic-indexscan-on-128-worker-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic-indexscan-on-128-worker-12-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic / seqscan'

plot "data/xeon/cyclic-seqscan-off-128-io_uring-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic-seqscan-off-128-sync-3-32GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic-seqscan-off-128-worker-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic-seqscan-off-128-worker-12-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic / smoothscan'

plot "data/xeon/cyclic-smoothscan-off-128-io_uring-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic-smoothscan-off-128-sync-3-32GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic-smoothscan-off-128-worker-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic-smoothscan-off-128-worker-12-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"
