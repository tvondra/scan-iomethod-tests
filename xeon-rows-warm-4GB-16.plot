set terminal pdfcairo size 25,40 enhanced font 'Verdana,12'
set output 'xeon-rows-warm-4GB-16.pdf'
#set output 'xeon-rows-warm-scaled.pdf'


set log x
set yrange [0:]
set key top left

set xlabel 'selectivity'

set multiplot layout 11,5 rowsfirst
set xrange[0.01:100]
set yrange[0:17004.78]
set title 'uniform / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/uniform-bitmapscan-16-io_uring-3-4GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/uniform-bitmapscan-16-sync-3-4GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/uniform-bitmapscan-16-worker-3-4GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/uniform-bitmapscan-16-worker-12-4GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'uniform / indexscan'

plot  "data/xeon/uniform-indexscan-16-io_uring-3-4GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/uniform-indexscan-16-sync-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/uniform-indexscan-16-worker-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/uniform-indexscan-16-worker-12-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'uniform / indexscan (prefetch)'

plot  "data/xeon/uniform-indexscan-prefetch-16-io_uring-3-4GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/uniform-indexscan-prefetch-16-sync-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/uniform-indexscan-prefetch-16-worker-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/uniform-indexscan-prefetch-16-worker-12-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'uniform / seqscan'

plot "data/xeon/uniform-seqscan-16-io_uring-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/uniform-seqscan-16-sync-3-4GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/uniform-seqscan-16-worker-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/uniform-seqscan-16-worker-12-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'uniform / smoothscan'

plot "data/xeon/uniform-smoothscan-16-io_uring-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/uniform-smoothscan-16-sync-3-4GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/uniform-smoothscan-16-worker-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/uniform-smoothscan-16-worker-12-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0:11171.002]
set title 'linear\_500 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/linear\_500-bitmapscan-16-io_uring-3-4GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_500-bitmapscan-16-sync-3-4GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_500-bitmapscan-16-worker-3-4GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_500-bitmapscan-16-worker-12-4GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear\_500 / indexscan'

plot  "data/xeon/linear\_500-indexscan-16-io_uring-3-4GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_500-indexscan-16-sync-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_500-indexscan-16-worker-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_500-indexscan-16-worker-12-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_500 / indexscan (prefetch)'

plot  "data/xeon/linear\_500-indexscan-prefetch-16-io_uring-3-4GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_500-indexscan-prefetch-16-sync-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_500-indexscan-prefetch-16-worker-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_500-indexscan-prefetch-16-worker-12-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_500 / seqscan'

plot "data/xeon/linear\_500-seqscan-16-io_uring-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_500-seqscan-16-sync-3-4GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_500-seqscan-16-worker-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_500-seqscan-16-worker-12-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_500 / smoothscan'

plot "data/xeon/linear\_500-smoothscan-16-io_uring-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_500-smoothscan-16-sync-3-4GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_500-smoothscan-16-worker-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_500-smoothscan-16-worker-12-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0:16827.511]
set title 'linear\_100 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/linear\_100-bitmapscan-16-io_uring-3-4GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_100-bitmapscan-16-sync-3-4GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_100-bitmapscan-16-worker-3-4GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_100-bitmapscan-16-worker-12-4GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear\_100 / indexscan'

plot  "data/xeon/linear\_100-indexscan-16-io_uring-3-4GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_100-indexscan-16-sync-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_100-indexscan-16-worker-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_100-indexscan-16-worker-12-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_100 / indexscan (prefetch)'

plot  "data/xeon/linear\_100-indexscan-prefetch-16-io_uring-3-4GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_100-indexscan-prefetch-16-sync-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_100-indexscan-prefetch-16-worker-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_100-indexscan-prefetch-16-worker-12-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_100 / seqscan'

plot "data/xeon/linear\_100-seqscan-16-io_uring-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_100-seqscan-16-sync-3-4GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_100-seqscan-16-worker-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_100-seqscan-16-worker-12-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_100 / smoothscan'

plot "data/xeon/linear\_100-smoothscan-16-io_uring-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_100-smoothscan-16-sync-3-4GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_100-smoothscan-16-worker-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_100-smoothscan-16-worker-12-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0:17670.517]
set title 'linear\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/linear\_10-bitmapscan-16-io_uring-3-4GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_10-bitmapscan-16-sync-3-4GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_10-bitmapscan-16-worker-3-4GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_10-bitmapscan-16-worker-12-4GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear\_10 / indexscan'

plot  "data/xeon/linear\_10-indexscan-16-io_uring-3-4GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_10-indexscan-16-sync-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_10-indexscan-16-worker-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_10-indexscan-16-worker-12-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_10 / indexscan (prefetch)'

plot  "data/xeon/linear\_10-indexscan-prefetch-16-io_uring-3-4GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_10-indexscan-prefetch-16-sync-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_10-indexscan-prefetch-16-worker-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_10-indexscan-prefetch-16-worker-12-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_10 / seqscan'

plot "data/xeon/linear\_10-seqscan-16-io_uring-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_10-seqscan-16-sync-3-4GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_10-seqscan-16-worker-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_10-seqscan-16-worker-12-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_10 / smoothscan'

plot "data/xeon/linear\_10-smoothscan-16-io_uring-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_10-smoothscan-16-sync-3-4GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_10-smoothscan-16-worker-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_10-smoothscan-16-worker-12-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0:17733.247]
set title 'linear\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/linear\_1-bitmapscan-16-io_uring-3-4GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_1-bitmapscan-16-sync-3-4GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_1-bitmapscan-16-worker-3-4GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_1-bitmapscan-16-worker-12-4GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear\_1 / indexscan'

plot  "data/xeon/linear\_1-indexscan-16-io_uring-3-4GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_1-indexscan-16-sync-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_1-indexscan-16-worker-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_1-indexscan-16-worker-12-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_1 / indexscan (prefetch)'

plot  "data/xeon/linear\_1-indexscan-prefetch-16-io_uring-3-4GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_1-indexscan-prefetch-16-sync-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_1-indexscan-prefetch-16-worker-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_1-indexscan-prefetch-16-worker-12-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_1 / seqscan'

plot "data/xeon/linear\_1-seqscan-16-io_uring-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_1-seqscan-16-sync-3-4GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_1-seqscan-16-worker-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_1-seqscan-16-worker-12-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_1 / smoothscan'

plot "data/xeon/linear\_1-smoothscan-16-io_uring-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_1-smoothscan-16-sync-3-4GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_1-smoothscan-16-worker-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear\_1-smoothscan-16-worker-12-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0:15427.707]
set title 'linear / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/linear-bitmapscan-16-io_uring-3-4GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear-bitmapscan-16-sync-3-4GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear-bitmapscan-16-worker-3-4GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear-bitmapscan-16-worker-12-4GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear / indexscan'

plot  "data/xeon/linear-indexscan-16-io_uring-3-4GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear-indexscan-16-sync-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear-indexscan-16-worker-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear-indexscan-16-worker-12-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear / indexscan (prefetch)'

plot  "data/xeon/linear-indexscan-prefetch-16-io_uring-3-4GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear-indexscan-prefetch-16-sync-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear-indexscan-prefetch-16-worker-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear-indexscan-prefetch-16-worker-12-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear / seqscan'

plot "data/xeon/linear-seqscan-16-io_uring-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear-seqscan-16-sync-3-4GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear-seqscan-16-worker-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear-seqscan-16-worker-12-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear / smoothscan'

plot "data/xeon/linear-smoothscan-16-io_uring-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear-smoothscan-16-sync-3-4GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear-smoothscan-16-worker-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/linear-smoothscan-16-worker-12-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0:11503.85]
set title 'cyclic\_500 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/cyclic\_500-bitmapscan-16-io_uring-3-4GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_500-bitmapscan-16-sync-3-4GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_500-bitmapscan-16-worker-3-4GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_500-bitmapscan-16-worker-12-4GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic\_500 / indexscan'

plot  "data/xeon/cyclic\_500-indexscan-16-io_uring-3-4GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_500-indexscan-16-sync-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_500-indexscan-16-worker-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_500-indexscan-16-worker-12-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_500 / indexscan (prefetch)'

plot  "data/xeon/cyclic\_500-indexscan-prefetch-16-io_uring-3-4GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_500-indexscan-prefetch-16-sync-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_500-indexscan-prefetch-16-worker-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_500-indexscan-prefetch-16-worker-12-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_500 / seqscan'

plot "data/xeon/cyclic\_500-seqscan-16-io_uring-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_500-seqscan-16-sync-3-4GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_500-seqscan-16-worker-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_500-seqscan-16-worker-12-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_500 / smoothscan'

plot "data/xeon/cyclic\_500-smoothscan-16-io_uring-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_500-smoothscan-16-sync-3-4GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_500-smoothscan-16-worker-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_500-smoothscan-16-worker-12-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0:16900.421]
set title 'cyclic\_100 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/cyclic\_100-bitmapscan-16-io_uring-3-4GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_100-bitmapscan-16-sync-3-4GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_100-bitmapscan-16-worker-3-4GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_100-bitmapscan-16-worker-12-4GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic\_100 / indexscan'

plot  "data/xeon/cyclic\_100-indexscan-16-io_uring-3-4GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_100-indexscan-16-sync-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_100-indexscan-16-worker-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_100-indexscan-16-worker-12-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_100 / indexscan (prefetch)'

plot  "data/xeon/cyclic\_100-indexscan-prefetch-16-io_uring-3-4GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_100-indexscan-prefetch-16-sync-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_100-indexscan-prefetch-16-worker-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_100-indexscan-prefetch-16-worker-12-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_100 / seqscan'

plot "data/xeon/cyclic\_100-seqscan-16-io_uring-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_100-seqscan-16-sync-3-4GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_100-seqscan-16-worker-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_100-seqscan-16-worker-12-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_100 / smoothscan'

plot "data/xeon/cyclic\_100-smoothscan-16-io_uring-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_100-smoothscan-16-sync-3-4GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_100-smoothscan-16-worker-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_100-smoothscan-16-worker-12-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0:17552.592]
set title 'cyclic\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/cyclic\_10-bitmapscan-16-io_uring-3-4GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_10-bitmapscan-16-sync-3-4GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_10-bitmapscan-16-worker-3-4GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_10-bitmapscan-16-worker-12-4GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic\_10 / indexscan'

plot  "data/xeon/cyclic\_10-indexscan-16-io_uring-3-4GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_10-indexscan-16-sync-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_10-indexscan-16-worker-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_10-indexscan-16-worker-12-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_10 / indexscan (prefetch)'

plot  "data/xeon/cyclic\_10-indexscan-prefetch-16-io_uring-3-4GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_10-indexscan-prefetch-16-sync-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_10-indexscan-prefetch-16-worker-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_10-indexscan-prefetch-16-worker-12-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_10 / seqscan'

plot "data/xeon/cyclic\_10-seqscan-16-io_uring-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_10-seqscan-16-sync-3-4GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_10-seqscan-16-worker-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_10-seqscan-16-worker-12-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_10 / smoothscan'

plot "data/xeon/cyclic\_10-smoothscan-16-io_uring-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_10-smoothscan-16-sync-3-4GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_10-smoothscan-16-worker-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_10-smoothscan-16-worker-12-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0:14546.598]
set title 'cyclic\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/cyclic\_1-bitmapscan-16-io_uring-3-4GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_1-bitmapscan-16-sync-3-4GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_1-bitmapscan-16-worker-3-4GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_1-bitmapscan-16-worker-12-4GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic\_1 / indexscan'

plot  "data/xeon/cyclic\_1-indexscan-16-io_uring-3-4GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_1-indexscan-16-sync-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_1-indexscan-16-worker-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_1-indexscan-16-worker-12-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_1 / indexscan (prefetch)'

plot  "data/xeon/cyclic\_1-indexscan-prefetch-16-io_uring-3-4GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_1-indexscan-prefetch-16-sync-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_1-indexscan-prefetch-16-worker-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_1-indexscan-prefetch-16-worker-12-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_1 / seqscan'

plot "data/xeon/cyclic\_1-seqscan-16-io_uring-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_1-seqscan-16-sync-3-4GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_1-seqscan-16-worker-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_1-seqscan-16-worker-12-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_1 / smoothscan'

plot "data/xeon/cyclic\_1-smoothscan-16-io_uring-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_1-smoothscan-16-sync-3-4GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_1-smoothscan-16-worker-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic\_1-smoothscan-16-worker-12-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0:13264.49]
set title 'cyclic / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/cyclic-bitmapscan-16-io_uring-3-4GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic-bitmapscan-16-sync-3-4GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic-bitmapscan-16-worker-3-4GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic-bitmapscan-16-worker-12-4GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic / indexscan'

plot  "data/xeon/cyclic-indexscan-16-io_uring-3-4GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic-indexscan-16-sync-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic-indexscan-16-worker-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic-indexscan-16-worker-12-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic / indexscan (prefetch)'

plot  "data/xeon/cyclic-indexscan-prefetch-16-io_uring-3-4GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic-indexscan-prefetch-16-sync-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic-indexscan-prefetch-16-worker-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic-indexscan-prefetch-16-worker-12-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic / seqscan'

plot "data/xeon/cyclic-seqscan-16-io_uring-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic-seqscan-16-sync-3-4GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic-seqscan-16-worker-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic-seqscan-16-worker-12-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic / smoothscan'

plot "data/xeon/cyclic-smoothscan-16-io_uring-3-4GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic-smoothscan-16-sync-3-4GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic-smoothscan-16-worker-3-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/xeon/cyclic-smoothscan-16-worker-12-4GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
