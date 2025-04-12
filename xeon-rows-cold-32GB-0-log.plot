set terminal pdfcairo size 16,40 enhanced font 'Verdana,12'
set output 'xeon-rows-cold-32GB-0-log.pdf'
#set output 'xeon-rows-cold-32GB-log.pdf'


set log x
set log y
set yrange [0.01:]
set key top left

set xlabel 'selectivity'

set multiplot layout 11,3 rowsfirst
set xrange[0.01:100]
set yrange[0.01:58269.656]
set title 'uniform / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/uniform-bitmapscan-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/uniform-bitmapscan-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/uniform-bitmapscan-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/uniform-bitmapscan-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'uniform / indexscan'

plot  "data/xeon/uniform-indexscan-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/uniform-indexscan-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/uniform-indexscan-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/uniform-indexscan-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'uniform / seqscan'

plot "data/xeon/uniform-seqscan-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/uniform-seqscan-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/uniform-seqscan-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/uniform-seqscan-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:57499.706]
set title 'linear\_500 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/linear\_500-bitmapscan-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_500-bitmapscan-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_500-bitmapscan-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_500-bitmapscan-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear\_500 / indexscan'

plot  "data/xeon/linear\_500-indexscan-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_500-indexscan-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_500-indexscan-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_500-indexscan-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_500 / seqscan'

plot "data/xeon/linear\_500-seqscan-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_500-seqscan-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_500-seqscan-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_500-seqscan-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:55751.062]
set title 'linear\_100 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/linear\_100-bitmapscan-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_100-bitmapscan-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_100-bitmapscan-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_100-bitmapscan-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear\_100 / indexscan'

plot  "data/xeon/linear\_100-indexscan-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_100-indexscan-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_100-indexscan-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_100-indexscan-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_100 / seqscan'

plot "data/xeon/linear\_100-seqscan-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_100-seqscan-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_100-seqscan-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_100-seqscan-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:49938.026]
set title 'linear\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/linear\_10-bitmapscan-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_10-bitmapscan-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_10-bitmapscan-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_10-bitmapscan-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear\_10 / indexscan'

plot  "data/xeon/linear\_10-indexscan-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_10-indexscan-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_10-indexscan-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_10-indexscan-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_10 / seqscan'

plot "data/xeon/linear\_10-seqscan-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_10-seqscan-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_10-seqscan-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_10-seqscan-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:49819.342]
set title 'linear\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/linear\_1-bitmapscan-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_1-bitmapscan-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_1-bitmapscan-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_1-bitmapscan-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear\_1 / indexscan'

plot  "data/xeon/linear\_1-indexscan-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_1-indexscan-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_1-indexscan-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_1-indexscan-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_1 / seqscan'

plot "data/xeon/linear\_1-seqscan-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_1-seqscan-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_1-seqscan-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_1-seqscan-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:7937.667]
set title 'linear / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/linear-bitmapscan-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear-bitmapscan-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear-bitmapscan-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear-bitmapscan-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear / indexscan'

plot  "data/xeon/linear-indexscan-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear-indexscan-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear-indexscan-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear-indexscan-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear / seqscan'

plot "data/xeon/linear-seqscan-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear-seqscan-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear-seqscan-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear-seqscan-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:58033.28]
set title 'cyclic\_500 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/cyclic\_500-bitmapscan-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_500-bitmapscan-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_500-bitmapscan-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_500-bitmapscan-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic\_500 / indexscan'

plot  "data/xeon/cyclic\_500-indexscan-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_500-indexscan-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_500-indexscan-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_500-indexscan-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_500 / seqscan'

plot "data/xeon/cyclic\_500-seqscan-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_500-seqscan-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_500-seqscan-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_500-seqscan-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:51024.501]
set title 'cyclic\_100 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/cyclic\_100-bitmapscan-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_100-bitmapscan-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_100-bitmapscan-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_100-bitmapscan-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic\_100 / indexscan'

plot  "data/xeon/cyclic\_100-indexscan-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_100-indexscan-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_100-indexscan-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_100-indexscan-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_100 / seqscan'

plot "data/xeon/cyclic\_100-seqscan-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_100-seqscan-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_100-seqscan-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_100-seqscan-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:45420.338]
set title 'cyclic\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/cyclic\_10-bitmapscan-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_10-bitmapscan-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_10-bitmapscan-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_10-bitmapscan-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic\_10 / indexscan'

plot  "data/xeon/cyclic\_10-indexscan-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_10-indexscan-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_10-indexscan-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_10-indexscan-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_10 / seqscan'

plot "data/xeon/cyclic\_10-seqscan-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_10-seqscan-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_10-seqscan-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_10-seqscan-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:11399.368]
set title 'cyclic\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/cyclic\_1-bitmapscan-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_1-bitmapscan-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_1-bitmapscan-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_1-bitmapscan-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic\_1 / indexscan'

plot  "data/xeon/cyclic\_1-indexscan-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_1-indexscan-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_1-indexscan-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_1-indexscan-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_1 / seqscan'

plot "data/xeon/cyclic\_1-seqscan-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_1-seqscan-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_1-seqscan-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_1-seqscan-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:11062.663]
set title 'cyclic / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/cyclic-bitmapscan-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic-bitmapscan-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic-bitmapscan-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic-bitmapscan-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic / indexscan'

plot  "data/xeon/cyclic-indexscan-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic-indexscan-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic-indexscan-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic-indexscan-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic / seqscan'

plot "data/xeon/cyclic-seqscan-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic-seqscan-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic-seqscan-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic-seqscan-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
