set terminal pdfcairo size 16,40 enhanced font 'Verdana,12'
set output 'ryzen_nvme-pages-cold-log.pdf'
#set output 'ryzen_nvme-pages-cold-log.pdf'


set log x
set log y
set yrange [0.01:]
set key top left

set xlabel 'selectivity'

set multiplot layout 11,4 rowsfirst
set xrange[0.1:100]
set yrange[0.01:28697.951]
set title 'uniform / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/uniform-bitmapscan-0-io_uring.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/uniform-bitmapscan-0-sync.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/uniform-bitmapscan-0-worker.data"    using 2:3 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'uniform / bitmapscan (prefetch)'

plot "data/ryzen_nvme/uniform-bitmapscan-16-io_uring.data" using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/uniform-bitmapscan-16-sync.data"     using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/uniform-bitmapscan-16-worker.data"   using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'uniform / indexscan'

plot  "data/ryzen_nvme/uniform-indexscan-0-io_uring.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/uniform-indexscan-0-sync.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/uniform-indexscan-0-worker.data"     using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'uniform / seqscan'

plot "data/ryzen_nvme/uniform-seqscan-0-io_uring.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/uniform-seqscan-0-sync.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/uniform-seqscan-0-worker.data"       using 2:3 with points pt 7 ps 0.75 title "worker"
set xrange[0.1:100]
set yrange[0.01:25480.458]
set title 'linear\_500 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/linear\_500-bitmapscan-0-io_uring.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_500-bitmapscan-0-sync.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_500-bitmapscan-0-worker.data"    using 2:3 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'linear\_500 / bitmapscan (prefetch)'

plot "data/ryzen_nvme/linear\_500-bitmapscan-16-io_uring.data" using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_500-bitmapscan-16-sync.data"     using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_500-bitmapscan-16-worker.data"   using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'linear\_500 / indexscan'

plot  "data/ryzen_nvme/linear\_500-indexscan-0-io_uring.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_500-indexscan-0-sync.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_500-indexscan-0-worker.data"     using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'linear\_500 / seqscan'

plot "data/ryzen_nvme/linear\_500-seqscan-0-io_uring.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_500-seqscan-0-sync.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_500-seqscan-0-worker.data"       using 2:3 with points pt 7 ps 0.75 title "worker"
set xrange[0.1:100]
set yrange[0.01:25926.074]
set title 'linear\_100 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/linear\_100-bitmapscan-0-io_uring.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_100-bitmapscan-0-sync.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_100-bitmapscan-0-worker.data"    using 2:3 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'linear\_100 / bitmapscan (prefetch)'

plot "data/ryzen_nvme/linear\_100-bitmapscan-16-io_uring.data" using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_100-bitmapscan-16-sync.data"     using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_100-bitmapscan-16-worker.data"   using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'linear\_100 / indexscan'

plot  "data/ryzen_nvme/linear\_100-indexscan-0-io_uring.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_100-indexscan-0-sync.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_100-indexscan-0-worker.data"     using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'linear\_100 / seqscan'

plot "data/ryzen_nvme/linear\_100-seqscan-0-io_uring.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_100-seqscan-0-sync.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_100-seqscan-0-worker.data"       using 2:3 with points pt 7 ps 0.75 title "worker"
set xrange[0.1:100]
set yrange[0.01:20362.176]
set title 'linear\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/linear\_10-bitmapscan-0-io_uring.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_10-bitmapscan-0-sync.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_10-bitmapscan-0-worker.data"    using 2:3 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'linear\_10 / bitmapscan (prefetch)'

plot "data/ryzen_nvme/linear\_10-bitmapscan-16-io_uring.data" using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_10-bitmapscan-16-sync.data"     using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_10-bitmapscan-16-worker.data"   using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'linear\_10 / indexscan'

plot  "data/ryzen_nvme/linear\_10-indexscan-0-io_uring.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_10-indexscan-0-sync.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_10-indexscan-0-worker.data"     using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'linear\_10 / seqscan'

plot "data/ryzen_nvme/linear\_10-seqscan-0-io_uring.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_10-seqscan-0-sync.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_10-seqscan-0-worker.data"       using 2:3 with points pt 7 ps 0.75 title "worker"
set xrange[0.1:100]
set yrange[0.01:6258.29]
set title 'linear\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/linear\_1-bitmapscan-0-io_uring.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_1-bitmapscan-0-sync.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_1-bitmapscan-0-worker.data"    using 2:3 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'linear\_1 / bitmapscan (prefetch)'

plot "data/ryzen_nvme/linear\_1-bitmapscan-16-io_uring.data" using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_1-bitmapscan-16-sync.data"     using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_1-bitmapscan-16-worker.data"   using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'linear\_1 / indexscan'

plot  "data/ryzen_nvme/linear\_1-indexscan-0-io_uring.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_1-indexscan-0-sync.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_1-indexscan-0-worker.data"     using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'linear\_1 / seqscan'

plot "data/ryzen_nvme/linear\_1-seqscan-0-io_uring.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_1-seqscan-0-sync.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_1-seqscan-0-worker.data"       using 2:3 with points pt 7 ps 0.75 title "worker"
set xrange[0.1:100]
set yrange[0.01:2192.685]
set title 'linear / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/linear-bitmapscan-0-io_uring.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear-bitmapscan-0-sync.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear-bitmapscan-0-worker.data"    using 2:3 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'linear / bitmapscan (prefetch)'

plot "data/ryzen_nvme/linear-bitmapscan-16-io_uring.data" using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear-bitmapscan-16-sync.data"     using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear-bitmapscan-16-worker.data"   using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'linear / indexscan'

plot  "data/ryzen_nvme/linear-indexscan-0-io_uring.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear-indexscan-0-sync.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear-indexscan-0-worker.data"     using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'linear / seqscan'

plot "data/ryzen_nvme/linear-seqscan-0-io_uring.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear-seqscan-0-sync.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear-seqscan-0-worker.data"       using 2:3 with points pt 7 ps 0.75 title "worker"
set xrange[0.1:100]
set yrange[0.01:23923.207]
set title 'cyclic\_500 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/cyclic\_500-bitmapscan-0-io_uring.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_500-bitmapscan-0-sync.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_500-bitmapscan-0-worker.data"    using 2:3 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'cyclic\_500 / bitmapscan (prefetch)'

plot "data/ryzen_nvme/cyclic\_500-bitmapscan-16-io_uring.data" using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_500-bitmapscan-16-sync.data"     using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_500-bitmapscan-16-worker.data"   using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_500 / indexscan'

plot  "data/ryzen_nvme/cyclic\_500-indexscan-0-io_uring.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_500-indexscan-0-sync.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_500-indexscan-0-worker.data"     using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_500 / seqscan'

plot "data/ryzen_nvme/cyclic\_500-seqscan-0-io_uring.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_500-seqscan-0-sync.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_500-seqscan-0-worker.data"       using 2:3 with points pt 7 ps 0.75 title "worker"
set xrange[0.1:100]
set yrange[0.01:14450.275]
set title 'cyclic\_100 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/cyclic\_100-bitmapscan-0-io_uring.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_100-bitmapscan-0-sync.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_100-bitmapscan-0-worker.data"    using 2:3 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'cyclic\_100 / bitmapscan (prefetch)'

plot "data/ryzen_nvme/cyclic\_100-bitmapscan-16-io_uring.data" using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_100-bitmapscan-16-sync.data"     using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_100-bitmapscan-16-worker.data"   using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_100 / indexscan'

plot  "data/ryzen_nvme/cyclic\_100-indexscan-0-io_uring.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_100-indexscan-0-sync.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_100-indexscan-0-worker.data"     using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_100 / seqscan'

plot "data/ryzen_nvme/cyclic\_100-seqscan-0-io_uring.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_100-seqscan-0-sync.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_100-seqscan-0-worker.data"       using 2:3 with points pt 7 ps 0.75 title "worker"
set xrange[0.1:100]
set yrange[0.01:5355.414]
set title 'cyclic\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/cyclic\_10-bitmapscan-0-io_uring.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_10-bitmapscan-0-sync.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_10-bitmapscan-0-worker.data"    using 2:3 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'cyclic\_10 / bitmapscan (prefetch)'

plot "data/ryzen_nvme/cyclic\_10-bitmapscan-16-io_uring.data" using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_10-bitmapscan-16-sync.data"     using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_10-bitmapscan-16-worker.data"   using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_10 / indexscan'

plot  "data/ryzen_nvme/cyclic\_10-indexscan-0-io_uring.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_10-indexscan-0-sync.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_10-indexscan-0-worker.data"     using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_10 / seqscan'

plot "data/ryzen_nvme/cyclic\_10-seqscan-0-io_uring.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_10-seqscan-0-sync.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_10-seqscan-0-worker.data"       using 2:3 with points pt 7 ps 0.75 title "worker"
set xrange[0.1:100]
set yrange[0.01:3852.049]
set title 'cyclic\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/cyclic\_1-bitmapscan-0-io_uring.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_1-bitmapscan-0-sync.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_1-bitmapscan-0-worker.data"    using 2:3 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'cyclic\_1 / bitmapscan (prefetch)'

plot "data/ryzen_nvme/cyclic\_1-bitmapscan-16-io_uring.data" using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_1-bitmapscan-16-sync.data"     using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_1-bitmapscan-16-worker.data"   using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_1 / indexscan'

plot  "data/ryzen_nvme/cyclic\_1-indexscan-0-io_uring.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_1-indexscan-0-sync.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_1-indexscan-0-worker.data"     using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_1 / seqscan'

plot "data/ryzen_nvme/cyclic\_1-seqscan-0-io_uring.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_1-seqscan-0-sync.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_1-seqscan-0-worker.data"       using 2:3 with points pt 7 ps 0.75 title "worker"
set xrange[0.1:100]
set yrange[0.01:2896.2]
set title 'cyclic / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/cyclic-bitmapscan-0-io_uring.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic-bitmapscan-0-sync.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic-bitmapscan-0-worker.data"    using 2:3 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'cyclic / bitmapscan (prefetch)'

plot "data/ryzen_nvme/cyclic-bitmapscan-16-io_uring.data" using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic-bitmapscan-16-sync.data"     using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic-bitmapscan-16-worker.data"   using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'cyclic / indexscan'

plot  "data/ryzen_nvme/cyclic-indexscan-0-io_uring.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic-indexscan-0-sync.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic-indexscan-0-worker.data"     using 2:3 with points pt 7 ps 0.75 title "worker"

set title 'cyclic / seqscan'

plot "data/ryzen_nvme/cyclic-seqscan-0-io_uring.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic-seqscan-0-sync.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic-seqscan-0-worker.data"       using 2:3 with points pt 7 ps 0.75 title "worker"
