set terminal pdfcairo size 16,40 enhanced font 'Verdana,12'
set output 'ryzen_nvme-rows-warm-log.pdf'
#set output 'ryzen_nvme-rows-warm-log.pdf'


set log x
set log y
set yrange [0.01:]
set key top left

set xlabel 'selectivity'

set multiplot layout 11,4 rowsfirst
set xrange[0.01:100]
set yrange[0.01:7522.52]
set title 'uniform / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/uniform-bitmapscan-0-io_uring.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/uniform-bitmapscan-0-sync.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/uniform-bitmapscan-0-worker.data"    using 1:4 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'uniform / bitmapscan (prefetch)'

plot "data/ryzen_nvme/uniform-bitmapscan-16-io_uring.data" using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/uniform-bitmapscan-16-sync.data"     using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/uniform-bitmapscan-16-worker.data"   using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'uniform / indexscan'

plot  "data/ryzen_nvme/uniform-indexscan-0-io_uring.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/uniform-indexscan-0-sync.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/uniform-indexscan-0-worker.data"     using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'uniform / seqscan'

plot "data/ryzen_nvme/uniform-seqscan-0-io_uring.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/uniform-seqscan-0-sync.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/uniform-seqscan-0-worker.data"       using 1:4 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0.01:4336.109]
set title 'linear\_500 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/linear\_500-bitmapscan-0-io_uring.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_500-bitmapscan-0-sync.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_500-bitmapscan-0-worker.data"    using 1:4 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'linear\_500 / bitmapscan (prefetch)'

plot "data/ryzen_nvme/linear\_500-bitmapscan-16-io_uring.data" using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_500-bitmapscan-16-sync.data"     using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_500-bitmapscan-16-worker.data"   using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'linear\_500 / indexscan'

plot  "data/ryzen_nvme/linear\_500-indexscan-0-io_uring.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_500-indexscan-0-sync.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_500-indexscan-0-worker.data"     using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'linear\_500 / seqscan'

plot "data/ryzen_nvme/linear\_500-seqscan-0-io_uring.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_500-seqscan-0-sync.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_500-seqscan-0-worker.data"       using 1:4 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0.01:5712.425]
set title 'linear\_100 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/linear\_100-bitmapscan-0-io_uring.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_100-bitmapscan-0-sync.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_100-bitmapscan-0-worker.data"    using 1:4 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'linear\_100 / bitmapscan (prefetch)'

plot "data/ryzen_nvme/linear\_100-bitmapscan-16-io_uring.data" using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_100-bitmapscan-16-sync.data"     using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_100-bitmapscan-16-worker.data"   using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'linear\_100 / indexscan'

plot  "data/ryzen_nvme/linear\_100-indexscan-0-io_uring.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_100-indexscan-0-sync.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_100-indexscan-0-worker.data"     using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'linear\_100 / seqscan'

plot "data/ryzen_nvme/linear\_100-seqscan-0-io_uring.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_100-seqscan-0-sync.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_100-seqscan-0-worker.data"       using 1:4 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0.01:3960.479]
set title 'linear\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/linear\_10-bitmapscan-0-io_uring.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_10-bitmapscan-0-sync.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_10-bitmapscan-0-worker.data"    using 1:4 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'linear\_10 / bitmapscan (prefetch)'

plot "data/ryzen_nvme/linear\_10-bitmapscan-16-io_uring.data" using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_10-bitmapscan-16-sync.data"     using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_10-bitmapscan-16-worker.data"   using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'linear\_10 / indexscan'

plot  "data/ryzen_nvme/linear\_10-indexscan-0-io_uring.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_10-indexscan-0-sync.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_10-indexscan-0-worker.data"     using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'linear\_10 / seqscan'

plot "data/ryzen_nvme/linear\_10-seqscan-0-io_uring.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_10-seqscan-0-sync.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_10-seqscan-0-worker.data"       using 1:4 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0.01:3196.165]
set title 'linear\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/linear\_1-bitmapscan-0-io_uring.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_1-bitmapscan-0-sync.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_1-bitmapscan-0-worker.data"    using 1:4 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'linear\_1 / bitmapscan (prefetch)'

plot "data/ryzen_nvme/linear\_1-bitmapscan-16-io_uring.data" using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_1-bitmapscan-16-sync.data"     using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_1-bitmapscan-16-worker.data"   using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'linear\_1 / indexscan'

plot  "data/ryzen_nvme/linear\_1-indexscan-0-io_uring.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_1-indexscan-0-sync.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_1-indexscan-0-worker.data"     using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'linear\_1 / seqscan'

plot "data/ryzen_nvme/linear\_1-seqscan-0-io_uring.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_1-seqscan-0-sync.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_1-seqscan-0-worker.data"       using 1:4 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0.01:1723.514]
set title 'linear / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/linear-bitmapscan-0-io_uring.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear-bitmapscan-0-sync.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear-bitmapscan-0-worker.data"    using 1:4 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'linear / bitmapscan (prefetch)'

plot "data/ryzen_nvme/linear-bitmapscan-16-io_uring.data" using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear-bitmapscan-16-sync.data"     using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear-bitmapscan-16-worker.data"   using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'linear / indexscan'

plot  "data/ryzen_nvme/linear-indexscan-0-io_uring.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear-indexscan-0-sync.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear-indexscan-0-worker.data"     using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'linear / seqscan'

plot "data/ryzen_nvme/linear-seqscan-0-io_uring.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear-seqscan-0-sync.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear-seqscan-0-worker.data"       using 1:4 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0.01:4324.691]
set title 'cyclic\_500 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/cyclic\_500-bitmapscan-0-io_uring.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_500-bitmapscan-0-sync.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_500-bitmapscan-0-worker.data"    using 1:4 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'cyclic\_500 / bitmapscan (prefetch)'

plot "data/ryzen_nvme/cyclic\_500-bitmapscan-16-io_uring.data" using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_500-bitmapscan-16-sync.data"     using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_500-bitmapscan-16-worker.data"   using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_500 / indexscan'

plot  "data/ryzen_nvme/cyclic\_500-indexscan-0-io_uring.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_500-indexscan-0-sync.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_500-indexscan-0-worker.data"     using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_500 / seqscan'

plot "data/ryzen_nvme/cyclic\_500-seqscan-0-io_uring.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_500-seqscan-0-sync.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_500-seqscan-0-worker.data"       using 1:4 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0.01:5692.628]
set title 'cyclic\_100 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/cyclic\_100-bitmapscan-0-io_uring.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_100-bitmapscan-0-sync.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_100-bitmapscan-0-worker.data"    using 1:4 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'cyclic\_100 / bitmapscan (prefetch)'

plot "data/ryzen_nvme/cyclic\_100-bitmapscan-16-io_uring.data" using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_100-bitmapscan-16-sync.data"     using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_100-bitmapscan-16-worker.data"   using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_100 / indexscan'

plot  "data/ryzen_nvme/cyclic\_100-indexscan-0-io_uring.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_100-indexscan-0-sync.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_100-indexscan-0-worker.data"     using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_100 / seqscan'

plot "data/ryzen_nvme/cyclic\_100-seqscan-0-io_uring.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_100-seqscan-0-sync.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_100-seqscan-0-worker.data"       using 1:4 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0.01:3961.368]
set title 'cyclic\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/cyclic\_10-bitmapscan-0-io_uring.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_10-bitmapscan-0-sync.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_10-bitmapscan-0-worker.data"    using 1:4 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'cyclic\_10 / bitmapscan (prefetch)'

plot "data/ryzen_nvme/cyclic\_10-bitmapscan-16-io_uring.data" using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_10-bitmapscan-16-sync.data"     using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_10-bitmapscan-16-worker.data"   using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_10 / indexscan'

plot  "data/ryzen_nvme/cyclic\_10-indexscan-0-io_uring.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_10-indexscan-0-sync.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_10-indexscan-0-worker.data"     using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_10 / seqscan'

plot "data/ryzen_nvme/cyclic\_10-seqscan-0-io_uring.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_10-seqscan-0-sync.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_10-seqscan-0-worker.data"       using 1:4 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0.01:3262.937]
set title 'cyclic\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/cyclic\_1-bitmapscan-0-io_uring.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_1-bitmapscan-0-sync.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_1-bitmapscan-0-worker.data"    using 1:4 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'cyclic\_1 / bitmapscan (prefetch)'

plot "data/ryzen_nvme/cyclic\_1-bitmapscan-16-io_uring.data" using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_1-bitmapscan-16-sync.data"     using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_1-bitmapscan-16-worker.data"   using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_1 / indexscan'

plot  "data/ryzen_nvme/cyclic\_1-indexscan-0-io_uring.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_1-indexscan-0-sync.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_1-indexscan-0-worker.data"     using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_1 / seqscan'

plot "data/ryzen_nvme/cyclic\_1-seqscan-0-io_uring.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_1-seqscan-0-sync.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_1-seqscan-0-worker.data"       using 1:4 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0.01:2403.563]
set title 'cyclic / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/cyclic-bitmapscan-0-io_uring.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic-bitmapscan-0-sync.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic-bitmapscan-0-worker.data"    using 1:4 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'cyclic / bitmapscan (prefetch)'

plot "data/ryzen_nvme/cyclic-bitmapscan-16-io_uring.data" using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic-bitmapscan-16-sync.data"     using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic-bitmapscan-16-worker.data"   using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'cyclic / indexscan'

plot  "data/ryzen_nvme/cyclic-indexscan-0-io_uring.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic-indexscan-0-sync.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic-indexscan-0-worker.data"     using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'cyclic / seqscan'

plot "data/ryzen_nvme/cyclic-seqscan-0-io_uring.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic-seqscan-0-sync.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic-seqscan-0-worker.data"       using 1:4 with points pt 7 ps 0.75 title "worker"
