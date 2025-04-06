set terminal pdfcairo size 16,40 enhanced font 'Verdana,12'
set output 'xeon-pages-cold-log.pdf'
#set output 'xeon-pages-cold-log.pdf'


set log x
set log y
set yrange [0.01:]
set key top left

set xlabel 'selectivity'

set multiplot layout 11,4 rowsfirst
set xrange[0.1:100]
set yrange[0.01:56571.393]
set title 'uniform / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/uniform-bitmapscan-0-io_uring.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/uniform-bitmapscan-0-sync.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/uniform-bitmapscan-0-worker.data"    using 2:3 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'uniform / bitmapscan (prefetch)'

plot "data/xeon/uniform-bitmapscan-16-io_uring.data" using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/uniform-bitmapscan-16-sync.data"     using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/uniform-bitmapscan-16-worker.data"   using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'uniform / indexscan'

plot  "data/xeon/uniform-indexscan-0-io_uring.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/uniform-indexscan-0-sync.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/uniform-indexscan-0-worker.data"     using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'uniform / seqscan'

plot "data/xeon/uniform-seqscan-0-io_uring.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/uniform-seqscan-0-sync.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/uniform-seqscan-0-worker.data"       using 2:3 with points pt 7 ps 0.75 title "worker"
set xrange[0.1:100]
set yrange[0.01:50767.402]
set title 'linear\_500 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/linear\_500-bitmapscan-0-io_uring.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_500-bitmapscan-0-sync.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_500-bitmapscan-0-worker.data"    using 2:3 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'linear\_500 / bitmapscan (prefetch)'

plot "data/xeon/linear\_500-bitmapscan-16-io_uring.data" using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_500-bitmapscan-16-sync.data"     using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_500-bitmapscan-16-worker.data"   using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'linear\_500 / indexscan'

plot  "data/xeon/linear\_500-indexscan-0-io_uring.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_500-indexscan-0-sync.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_500-indexscan-0-worker.data"     using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'linear\_500 / seqscan'

plot "data/xeon/linear\_500-seqscan-0-io_uring.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_500-seqscan-0-sync.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_500-seqscan-0-worker.data"       using 2:3 with points pt 7 ps 0.75 title "worker"
set xrange[0.1:100]
set yrange[0.01:51117.617]
set title 'linear\_100 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/linear\_100-bitmapscan-0-io_uring.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_100-bitmapscan-0-sync.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_100-bitmapscan-0-worker.data"    using 2:3 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'linear\_100 / bitmapscan (prefetch)'

plot "data/xeon/linear\_100-bitmapscan-16-io_uring.data" using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_100-bitmapscan-16-sync.data"     using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_100-bitmapscan-16-worker.data"   using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'linear\_100 / indexscan'

plot  "data/xeon/linear\_100-indexscan-0-io_uring.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_100-indexscan-0-sync.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_100-indexscan-0-worker.data"     using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'linear\_100 / seqscan'

plot "data/xeon/linear\_100-seqscan-0-io_uring.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_100-seqscan-0-sync.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_100-seqscan-0-worker.data"       using 2:3 with points pt 7 ps 0.75 title "worker"
set xrange[0.1:100]
set yrange[0.01:49768.834]
set title 'linear\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/linear\_10-bitmapscan-0-io_uring.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_10-bitmapscan-0-sync.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_10-bitmapscan-0-worker.data"    using 2:3 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'linear\_10 / bitmapscan (prefetch)'

plot "data/xeon/linear\_10-bitmapscan-16-io_uring.data" using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_10-bitmapscan-16-sync.data"     using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_10-bitmapscan-16-worker.data"   using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'linear\_10 / indexscan'

plot  "data/xeon/linear\_10-indexscan-0-io_uring.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_10-indexscan-0-sync.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_10-indexscan-0-worker.data"     using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'linear\_10 / seqscan'

plot "data/xeon/linear\_10-seqscan-0-io_uring.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_10-seqscan-0-sync.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_10-seqscan-0-worker.data"       using 2:3 with points pt 7 ps 0.75 title "worker"
set xrange[0.1:100]
set yrange[0.01:46836.601]
set title 'linear\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/linear\_1-bitmapscan-0-io_uring.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_1-bitmapscan-0-sync.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_1-bitmapscan-0-worker.data"    using 2:3 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'linear\_1 / bitmapscan (prefetch)'

plot "data/xeon/linear\_1-bitmapscan-16-io_uring.data" using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_1-bitmapscan-16-sync.data"     using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_1-bitmapscan-16-worker.data"   using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'linear\_1 / indexscan'

plot  "data/xeon/linear\_1-indexscan-0-io_uring.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_1-indexscan-0-sync.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_1-indexscan-0-worker.data"     using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'linear\_1 / seqscan'

plot "data/xeon/linear\_1-seqscan-0-io_uring.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear\_1-seqscan-0-sync.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear\_1-seqscan-0-worker.data"       using 2:3 with points pt 7 ps 0.75 title "worker"
set xrange[0.1:100]
set yrange[0.01:7848.477]
set title 'linear / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/linear-bitmapscan-0-io_uring.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear-bitmapscan-0-sync.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear-bitmapscan-0-worker.data"    using 2:3 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'linear / bitmapscan (prefetch)'

plot "data/xeon/linear-bitmapscan-16-io_uring.data" using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear-bitmapscan-16-sync.data"     using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear-bitmapscan-16-worker.data"   using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'linear / indexscan'

plot  "data/xeon/linear-indexscan-0-io_uring.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear-indexscan-0-sync.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear-indexscan-0-worker.data"     using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'linear / seqscan'

plot "data/xeon/linear-seqscan-0-io_uring.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/linear-seqscan-0-sync.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/linear-seqscan-0-worker.data"       using 2:3 with points pt 7 ps 0.75 title "worker"
set xrange[0.1:100]
set yrange[0.01:50046.62]
set title 'cyclic\_500 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/cyclic\_500-bitmapscan-0-io_uring.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_500-bitmapscan-0-sync.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_500-bitmapscan-0-worker.data"    using 2:3 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'cyclic\_500 / bitmapscan (prefetch)'

plot "data/xeon/cyclic\_500-bitmapscan-16-io_uring.data" using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_500-bitmapscan-16-sync.data"     using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_500-bitmapscan-16-worker.data"   using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_500 / indexscan'

plot  "data/xeon/cyclic\_500-indexscan-0-io_uring.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_500-indexscan-0-sync.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_500-indexscan-0-worker.data"     using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_500 / seqscan'

plot "data/xeon/cyclic\_500-seqscan-0-io_uring.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_500-seqscan-0-sync.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_500-seqscan-0-worker.data"       using 2:3 with points pt 7 ps 0.75 title "worker"
set xrange[0.1:100]
set yrange[0.01:51187.956]
set title 'cyclic\_100 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/cyclic\_100-bitmapscan-0-io_uring.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_100-bitmapscan-0-sync.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_100-bitmapscan-0-worker.data"    using 2:3 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'cyclic\_100 / bitmapscan (prefetch)'

plot "data/xeon/cyclic\_100-bitmapscan-16-io_uring.data" using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_100-bitmapscan-16-sync.data"     using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_100-bitmapscan-16-worker.data"   using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_100 / indexscan'

plot  "data/xeon/cyclic\_100-indexscan-0-io_uring.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_100-indexscan-0-sync.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_100-indexscan-0-worker.data"     using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_100 / seqscan'

plot "data/xeon/cyclic\_100-seqscan-0-io_uring.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_100-seqscan-0-sync.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_100-seqscan-0-worker.data"       using 2:3 with points pt 7 ps 0.75 title "worker"
set xrange[0.1:100]
set yrange[0.01:37131.871]
set title 'cyclic\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/cyclic\_10-bitmapscan-0-io_uring.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_10-bitmapscan-0-sync.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_10-bitmapscan-0-worker.data"    using 2:3 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'cyclic\_10 / bitmapscan (prefetch)'

plot "data/xeon/cyclic\_10-bitmapscan-16-io_uring.data" using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_10-bitmapscan-16-sync.data"     using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_10-bitmapscan-16-worker.data"   using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_10 / indexscan'

plot  "data/xeon/cyclic\_10-indexscan-0-io_uring.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_10-indexscan-0-sync.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_10-indexscan-0-worker.data"     using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_10 / seqscan'

plot "data/xeon/cyclic\_10-seqscan-0-io_uring.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_10-seqscan-0-sync.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_10-seqscan-0-worker.data"       using 2:3 with points pt 7 ps 0.75 title "worker"
set xrange[0.1:100]
set yrange[0.01:11307.338]
set title 'cyclic\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/cyclic\_1-bitmapscan-0-io_uring.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_1-bitmapscan-0-sync.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_1-bitmapscan-0-worker.data"    using 2:3 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'cyclic\_1 / bitmapscan (prefetch)'

plot "data/xeon/cyclic\_1-bitmapscan-16-io_uring.data" using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_1-bitmapscan-16-sync.data"     using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_1-bitmapscan-16-worker.data"   using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_1 / indexscan'

plot  "data/xeon/cyclic\_1-indexscan-0-io_uring.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_1-indexscan-0-sync.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_1-indexscan-0-worker.data"     using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_1 / seqscan'

plot "data/xeon/cyclic\_1-seqscan-0-io_uring.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic\_1-seqscan-0-sync.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic\_1-seqscan-0-worker.data"       using 2:3 with points pt 7 ps 0.75 title "worker"
set xrange[0.1:100]
set yrange[0.01:10931.056]
set title 'cyclic / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/xeon/cyclic-bitmapscan-0-io_uring.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic-bitmapscan-0-sync.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic-bitmapscan-0-worker.data"    using 2:3 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'cyclic / bitmapscan (prefetch)'

plot "data/xeon/cyclic-bitmapscan-16-io_uring.data" using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic-bitmapscan-16-sync.data"     using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic-bitmapscan-16-worker.data"   using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'cyclic / indexscan'

plot  "data/xeon/cyclic-indexscan-0-io_uring.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic-indexscan-0-sync.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic-indexscan-0-worker.data"     using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'cyclic / seqscan'

plot "data/xeon/cyclic-seqscan-0-io_uring.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/xeon/cyclic-seqscan-0-sync.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/xeon/cyclic-seqscan-0-worker.data"       using 2:3 with points pt 7 ps 0.75 title "worker"
