set terminal pdfcairo size 16,40 enhanced font 'Verdana,12'
set output 'xeon-rows-warm.pdf'
#set output 'xeon-rows-warm-scaled.pdf'


set log x
set yrange [0:]
set key top left

set xlabel 'selectivity'

set multiplot layout 11,4 rowsfirst
set xrange[0.01:100]
set yrange[0:14869.983]
set title 'uniform / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/uniform-bitmapscan-0-io_uring.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/uniform-bitmapscan-0-sync.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/uniform-bitmapscan-0-worker.data"    using 1:4 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'uniform / bitmapscan (prefetch)'

plot "data/xeon/uniform-bitmapscan-16-io_uring.data" using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/uniform-bitmapscan-16-sync.data"     using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/uniform-bitmapscan-16-worker.data"   using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'uniform / indexscan'

plot  "data/xeon/uniform-indexscan-0-io_uring.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/uniform-indexscan-0-sync.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/uniform-indexscan-0-worker.data"     using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'uniform / seqscan'

plot "data/xeon/uniform-seqscan-0-io_uring.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/uniform-seqscan-0-sync.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/uniform-seqscan-0-worker.data"       using 1:4 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0:8858.585]
set title 'linear\_500 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/linear\_500-bitmapscan-0-io_uring.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_500-bitmapscan-0-sync.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_500-bitmapscan-0-worker.data"    using 1:4 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'linear\_500 / bitmapscan (prefetch)'

plot "data/xeon/linear\_500-bitmapscan-16-io_uring.data" using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_500-bitmapscan-16-sync.data"     using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_500-bitmapscan-16-worker.data"   using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'linear\_500 / indexscan'

plot  "data/xeon/linear\_500-indexscan-0-io_uring.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_500-indexscan-0-sync.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_500-indexscan-0-worker.data"     using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'linear\_500 / seqscan'

plot "data/xeon/linear\_500-seqscan-0-io_uring.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_500-seqscan-0-sync.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_500-seqscan-0-worker.data"       using 1:4 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0:13806.672]
set title 'linear\_100 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/linear\_100-bitmapscan-0-io_uring.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_100-bitmapscan-0-sync.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_100-bitmapscan-0-worker.data"    using 1:4 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'linear\_100 / bitmapscan (prefetch)'

plot "data/xeon/linear\_100-bitmapscan-16-io_uring.data" using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_100-bitmapscan-16-sync.data"     using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_100-bitmapscan-16-worker.data"   using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'linear\_100 / indexscan'

plot  "data/xeon/linear\_100-indexscan-0-io_uring.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_100-indexscan-0-sync.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_100-indexscan-0-worker.data"     using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'linear\_100 / seqscan'

plot "data/xeon/linear\_100-seqscan-0-io_uring.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_100-seqscan-0-sync.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_100-seqscan-0-worker.data"       using 1:4 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0:10097.383]
set title 'linear\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/linear\_10-bitmapscan-0-io_uring.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_10-bitmapscan-0-sync.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_10-bitmapscan-0-worker.data"    using 1:4 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'linear\_10 / bitmapscan (prefetch)'

plot "data/xeon/linear\_10-bitmapscan-16-io_uring.data" using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_10-bitmapscan-16-sync.data"     using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_10-bitmapscan-16-worker.data"   using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'linear\_10 / indexscan'

plot  "data/xeon/linear\_10-indexscan-0-io_uring.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_10-indexscan-0-sync.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_10-indexscan-0-worker.data"     using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'linear\_10 / seqscan'

plot "data/xeon/linear\_10-seqscan-0-io_uring.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_10-seqscan-0-sync.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_10-seqscan-0-worker.data"       using 1:4 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0:8820.124]
set title 'linear\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/linear\_1-bitmapscan-0-io_uring.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_1-bitmapscan-0-sync.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_1-bitmapscan-0-worker.data"    using 1:4 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'linear\_1 / bitmapscan (prefetch)'

plot "data/xeon/linear\_1-bitmapscan-16-io_uring.data" using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_1-bitmapscan-16-sync.data"     using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_1-bitmapscan-16-worker.data"   using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'linear\_1 / indexscan'

plot  "data/xeon/linear\_1-indexscan-0-io_uring.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_1-indexscan-0-sync.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_1-indexscan-0-worker.data"     using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'linear\_1 / seqscan'

plot "data/xeon/linear\_1-seqscan-0-io_uring.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_1-seqscan-0-sync.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_1-seqscan-0-worker.data"       using 1:4 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0:5615.63]
set title 'linear / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/linear-bitmapscan-0-io_uring.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear-bitmapscan-0-sync.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear-bitmapscan-0-worker.data"    using 1:4 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'linear / bitmapscan (prefetch)'

plot "data/xeon/linear-bitmapscan-16-io_uring.data" using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear-bitmapscan-16-sync.data"     using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear-bitmapscan-16-worker.data"   using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'linear / indexscan'

plot  "data/xeon/linear-indexscan-0-io_uring.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear-indexscan-0-sync.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear-indexscan-0-worker.data"     using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'linear / seqscan'

plot "data/xeon/linear-seqscan-0-io_uring.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear-seqscan-0-sync.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear-seqscan-0-worker.data"       using 1:4 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0:8216.614]
set title 'cyclic\_500 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/cyclic\_500-bitmapscan-0-io_uring.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_500-bitmapscan-0-sync.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_500-bitmapscan-0-worker.data"    using 1:4 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'cyclic\_500 / bitmapscan (prefetch)'

plot "data/xeon/cyclic\_500-bitmapscan-16-io_uring.data" using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_500-bitmapscan-16-sync.data"     using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_500-bitmapscan-16-worker.data"   using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_500 / indexscan'

plot  "data/xeon/cyclic\_500-indexscan-0-io_uring.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_500-indexscan-0-sync.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_500-indexscan-0-worker.data"     using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_500 / seqscan'

plot "data/xeon/cyclic\_500-seqscan-0-io_uring.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_500-seqscan-0-sync.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_500-seqscan-0-worker.data"       using 1:4 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0:13961.542]
set title 'cyclic\_100 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/cyclic\_100-bitmapscan-0-io_uring.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_100-bitmapscan-0-sync.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_100-bitmapscan-0-worker.data"    using 1:4 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'cyclic\_100 / bitmapscan (prefetch)'

plot "data/xeon/cyclic\_100-bitmapscan-16-io_uring.data" using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_100-bitmapscan-16-sync.data"     using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_100-bitmapscan-16-worker.data"   using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_100 / indexscan'

plot  "data/xeon/cyclic\_100-indexscan-0-io_uring.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_100-indexscan-0-sync.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_100-indexscan-0-worker.data"     using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_100 / seqscan'

plot "data/xeon/cyclic\_100-seqscan-0-io_uring.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_100-seqscan-0-sync.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_100-seqscan-0-worker.data"       using 1:4 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0:11495.308]
set title 'cyclic\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/cyclic\_10-bitmapscan-0-io_uring.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_10-bitmapscan-0-sync.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_10-bitmapscan-0-worker.data"    using 1:4 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'cyclic\_10 / bitmapscan (prefetch)'

plot "data/xeon/cyclic\_10-bitmapscan-16-io_uring.data" using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_10-bitmapscan-16-sync.data"     using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_10-bitmapscan-16-worker.data"   using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_10 / indexscan'

plot  "data/xeon/cyclic\_10-indexscan-0-io_uring.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_10-indexscan-0-sync.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_10-indexscan-0-worker.data"     using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_10 / seqscan'

plot "data/xeon/cyclic\_10-seqscan-0-io_uring.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_10-seqscan-0-sync.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_10-seqscan-0-worker.data"       using 1:4 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0:8754.599]
set title 'cyclic\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/cyclic\_1-bitmapscan-0-io_uring.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_1-bitmapscan-0-sync.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_1-bitmapscan-0-worker.data"    using 1:4 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'cyclic\_1 / bitmapscan (prefetch)'

plot "data/xeon/cyclic\_1-bitmapscan-16-io_uring.data" using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_1-bitmapscan-16-sync.data"     using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_1-bitmapscan-16-worker.data"   using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_1 / indexscan'

plot  "data/xeon/cyclic\_1-indexscan-0-io_uring.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_1-indexscan-0-sync.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_1-indexscan-0-worker.data"     using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_1 / seqscan'

plot "data/xeon/cyclic\_1-seqscan-0-io_uring.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_1-seqscan-0-sync.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_1-seqscan-0-worker.data"       using 1:4 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0:7924.169]
set title 'cyclic / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/cyclic-bitmapscan-0-io_uring.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic-bitmapscan-0-sync.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic-bitmapscan-0-worker.data"    using 1:4 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'cyclic / bitmapscan (prefetch)'

plot "data/xeon/cyclic-bitmapscan-16-io_uring.data" using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic-bitmapscan-16-sync.data"     using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic-bitmapscan-16-worker.data"   using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'cyclic / indexscan'

plot  "data/xeon/cyclic-indexscan-0-io_uring.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic-indexscan-0-sync.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic-indexscan-0-worker.data"     using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'cyclic / seqscan'

plot "data/xeon/cyclic-seqscan-0-io_uring.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic-seqscan-0-sync.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic-seqscan-0-worker.data"       using 1:4 with points pt 7 ps 0.75 title "worker"
