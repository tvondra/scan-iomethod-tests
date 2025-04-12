set terminal pdfcairo size 16,40 enhanced font 'Verdana,12'
set output 'xeon-rows-warm-32GB-128-log.pdf'
#set output 'xeon-rows-warm-32GB-log.pdf'


set log x
set log y
set yrange [0.01:]
set key top left

set xlabel 'selectivity'

set multiplot layout 11,3 rowsfirst
set xrange[0.01:100]
set yrange[0.01:17004.78]
set title 'uniform / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/uniform-bitmapscan-128-io_uring-3-32GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/uniform-bitmapscan-128-sync-3-32GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/uniform-bitmapscan-128-worker-3-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/uniform-bitmapscan-128-worker-12-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'uniform / indexscan'

plot  "data/xeon/uniform-indexscan-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/uniform-indexscan-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/uniform-indexscan-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/uniform-indexscan-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'uniform / seqscan'

plot "data/xeon/uniform-seqscan-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/uniform-seqscan-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/uniform-seqscan-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/uniform-seqscan-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:9570.274]
set title 'linear\_500 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/linear\_500-bitmapscan-128-io_uring-3-32GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_500-bitmapscan-128-sync-3-32GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_500-bitmapscan-128-worker-3-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_500-bitmapscan-128-worker-12-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear\_500 / indexscan'

plot  "data/xeon/linear\_500-indexscan-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_500-indexscan-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_500-indexscan-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_500-indexscan-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_500 / seqscan'

plot "data/xeon/linear\_500-seqscan-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_500-seqscan-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_500-seqscan-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_500-seqscan-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:14309.688]
set title 'linear\_100 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/linear\_100-bitmapscan-128-io_uring-3-32GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_100-bitmapscan-128-sync-3-32GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_100-bitmapscan-128-worker-3-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_100-bitmapscan-128-worker-12-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear\_100 / indexscan'

plot  "data/xeon/linear\_100-indexscan-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_100-indexscan-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_100-indexscan-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_100-indexscan-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_100 / seqscan'

plot "data/xeon/linear\_100-seqscan-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_100-seqscan-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_100-seqscan-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_100-seqscan-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:11439.303]
set title 'linear\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/linear\_10-bitmapscan-128-io_uring-3-32GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_10-bitmapscan-128-sync-3-32GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_10-bitmapscan-128-worker-3-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_10-bitmapscan-128-worker-12-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear\_10 / indexscan'

plot  "data/xeon/linear\_10-indexscan-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_10-indexscan-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_10-indexscan-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_10-indexscan-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_10 / seqscan'

plot "data/xeon/linear\_10-seqscan-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_10-seqscan-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_10-seqscan-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_10-seqscan-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:9285.469]
set title 'linear\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/linear\_1-bitmapscan-128-io_uring-3-32GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_1-bitmapscan-128-sync-3-32GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_1-bitmapscan-128-worker-3-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_1-bitmapscan-128-worker-12-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear\_1 / indexscan'

plot  "data/xeon/linear\_1-indexscan-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_1-indexscan-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_1-indexscan-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_1-indexscan-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_1 / seqscan'

plot "data/xeon/linear\_1-seqscan-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_1-seqscan-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_1-seqscan-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_1-seqscan-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:5867.507]
set title 'linear / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/linear-bitmapscan-128-io_uring-3-32GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear-bitmapscan-128-sync-3-32GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear-bitmapscan-128-worker-3-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear-bitmapscan-128-worker-12-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear / indexscan'

plot  "data/xeon/linear-indexscan-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear-indexscan-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear-indexscan-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear-indexscan-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear / seqscan'

plot "data/xeon/linear-seqscan-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear-seqscan-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear-seqscan-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear-seqscan-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:9473.657]
set title 'cyclic\_500 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/cyclic\_500-bitmapscan-128-io_uring-3-32GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_500-bitmapscan-128-sync-3-32GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_500-bitmapscan-128-worker-3-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_500-bitmapscan-128-worker-12-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic\_500 / indexscan'

plot  "data/xeon/cyclic\_500-indexscan-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_500-indexscan-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_500-indexscan-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_500-indexscan-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_500 / seqscan'

plot "data/xeon/cyclic\_500-seqscan-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_500-seqscan-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_500-seqscan-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_500-seqscan-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:11674.057]
set title 'cyclic\_100 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/cyclic\_100-bitmapscan-128-io_uring-3-32GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_100-bitmapscan-128-sync-3-32GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_100-bitmapscan-128-worker-3-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_100-bitmapscan-128-worker-12-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic\_100 / indexscan'

plot  "data/xeon/cyclic\_100-indexscan-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_100-indexscan-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_100-indexscan-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_100-indexscan-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_100 / seqscan'

plot "data/xeon/cyclic\_100-seqscan-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_100-seqscan-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_100-seqscan-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_100-seqscan-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:11799.109]
set title 'cyclic\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/cyclic\_10-bitmapscan-128-io_uring-3-32GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_10-bitmapscan-128-sync-3-32GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_10-bitmapscan-128-worker-3-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_10-bitmapscan-128-worker-12-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic\_10 / indexscan'

plot  "data/xeon/cyclic\_10-indexscan-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_10-indexscan-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_10-indexscan-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_10-indexscan-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_10 / seqscan'

plot "data/xeon/cyclic\_10-seqscan-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_10-seqscan-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_10-seqscan-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_10-seqscan-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:9367.616]
set title 'cyclic\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/cyclic\_1-bitmapscan-128-io_uring-3-32GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_1-bitmapscan-128-sync-3-32GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_1-bitmapscan-128-worker-3-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_1-bitmapscan-128-worker-12-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic\_1 / indexscan'

plot  "data/xeon/cyclic\_1-indexscan-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_1-indexscan-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_1-indexscan-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_1-indexscan-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_1 / seqscan'

plot "data/xeon/cyclic\_1-seqscan-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_1-seqscan-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_1-seqscan-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_1-seqscan-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:8642.092]
set title 'cyclic / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/cyclic-bitmapscan-128-io_uring-3-32GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic-bitmapscan-128-sync-3-32GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic-bitmapscan-128-worker-3-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic-bitmapscan-128-worker-12-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic / indexscan'

plot  "data/xeon/cyclic-indexscan-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic-indexscan-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic-indexscan-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic-indexscan-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic / seqscan'

plot "data/xeon/cyclic-seqscan-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic-seqscan-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic-seqscan-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic-seqscan-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
