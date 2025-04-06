set terminal pdfcairo size 16,40 enhanced font 'Verdana,12'
set output 'ryzen_sata-rows-warm-log.pdf'
#set output 'ryzen_sata-rows-warm-log.pdf'


set log x
set log y
set yrange [0.01:]
set key top left

set xlabel 'selectivity'

set multiplot layout 11,4 rowsfirst
set xrange[0.01:100]
set yrange[0.01:7361.921]
set title 'uniform / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/uniform-bitmapscan-0-io_uring.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/uniform-bitmapscan-0-sync.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/uniform-bitmapscan-0-worker.data"    using 1:4 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'uniform / bitmapscan (prefetch)'

plot "data/ryzen_sata/uniform-bitmapscan-16-io_uring.data" using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/uniform-bitmapscan-16-sync.data"     using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/uniform-bitmapscan-16-worker.data"   using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'uniform / indexscan'

plot  "data/ryzen_sata/uniform-indexscan-0-io_uring.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/uniform-indexscan-0-sync.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/uniform-indexscan-0-worker.data"     using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'uniform / seqscan'

plot "data/ryzen_sata/uniform-seqscan-0-io_uring.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/uniform-seqscan-0-sync.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/uniform-seqscan-0-worker.data"       using 1:4 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0.01:4259.07]
set title 'linear\_500 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/linear\_500-bitmapscan-0-io_uring.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_500-bitmapscan-0-sync.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_500-bitmapscan-0-worker.data"    using 1:4 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'linear\_500 / bitmapscan (prefetch)'

plot "data/ryzen_sata/linear\_500-bitmapscan-16-io_uring.data" using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_500-bitmapscan-16-sync.data"     using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_500-bitmapscan-16-worker.data"   using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'linear\_500 / indexscan'

plot  "data/ryzen_sata/linear\_500-indexscan-0-io_uring.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_500-indexscan-0-sync.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_500-indexscan-0-worker.data"     using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'linear\_500 / seqscan'

plot "data/ryzen_sata/linear\_500-seqscan-0-io_uring.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_500-seqscan-0-sync.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_500-seqscan-0-worker.data"       using 1:4 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0.01:5464.036]
set title 'linear\_100 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/linear\_100-bitmapscan-0-io_uring.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_100-bitmapscan-0-sync.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_100-bitmapscan-0-worker.data"    using 1:4 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'linear\_100 / bitmapscan (prefetch)'

plot "data/ryzen_sata/linear\_100-bitmapscan-16-io_uring.data" using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_100-bitmapscan-16-sync.data"     using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_100-bitmapscan-16-worker.data"   using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'linear\_100 / indexscan'

plot  "data/ryzen_sata/linear\_100-indexscan-0-io_uring.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_100-indexscan-0-sync.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_100-indexscan-0-worker.data"     using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'linear\_100 / seqscan'

plot "data/ryzen_sata/linear\_100-seqscan-0-io_uring.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_100-seqscan-0-sync.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_100-seqscan-0-worker.data"       using 1:4 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0.01:3959.542]
set title 'linear\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/linear\_10-bitmapscan-0-io_uring.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_10-bitmapscan-0-sync.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_10-bitmapscan-0-worker.data"    using 1:4 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'linear\_10 / bitmapscan (prefetch)'

plot "data/ryzen_sata/linear\_10-bitmapscan-16-io_uring.data" using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_10-bitmapscan-16-sync.data"     using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_10-bitmapscan-16-worker.data"   using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'linear\_10 / indexscan'

plot  "data/ryzen_sata/linear\_10-indexscan-0-io_uring.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_10-indexscan-0-sync.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_10-indexscan-0-worker.data"     using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'linear\_10 / seqscan'

plot "data/ryzen_sata/linear\_10-seqscan-0-io_uring.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_10-seqscan-0-sync.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_10-seqscan-0-worker.data"       using 1:4 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0.01:3243.56]
set title 'linear\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/linear\_1-bitmapscan-0-io_uring.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_1-bitmapscan-0-sync.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_1-bitmapscan-0-worker.data"    using 1:4 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'linear\_1 / bitmapscan (prefetch)'

plot "data/ryzen_sata/linear\_1-bitmapscan-16-io_uring.data" using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_1-bitmapscan-16-sync.data"     using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_1-bitmapscan-16-worker.data"   using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'linear\_1 / indexscan'

plot  "data/ryzen_sata/linear\_1-indexscan-0-io_uring.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_1-indexscan-0-sync.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_1-indexscan-0-worker.data"     using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'linear\_1 / seqscan'

plot "data/ryzen_sata/linear\_1-seqscan-0-io_uring.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_1-seqscan-0-sync.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_1-seqscan-0-worker.data"       using 1:4 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0.01:1689.811]
set title 'linear / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/linear-bitmapscan-0-io_uring.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear-bitmapscan-0-sync.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear-bitmapscan-0-worker.data"    using 1:4 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'linear / bitmapscan (prefetch)'

plot "data/ryzen_sata/linear-bitmapscan-16-io_uring.data" using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear-bitmapscan-16-sync.data"     using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear-bitmapscan-16-worker.data"   using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'linear / indexscan'

plot  "data/ryzen_sata/linear-indexscan-0-io_uring.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear-indexscan-0-sync.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear-indexscan-0-worker.data"     using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'linear / seqscan'

plot "data/ryzen_sata/linear-seqscan-0-io_uring.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear-seqscan-0-sync.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear-seqscan-0-worker.data"       using 1:4 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0.01:4276.281]
set title 'cyclic\_500 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/cyclic\_500-bitmapscan-0-io_uring.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_500-bitmapscan-0-sync.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_500-bitmapscan-0-worker.data"    using 1:4 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'cyclic\_500 / bitmapscan (prefetch)'

plot "data/ryzen_sata/cyclic\_500-bitmapscan-16-io_uring.data" using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_500-bitmapscan-16-sync.data"     using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_500-bitmapscan-16-worker.data"   using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_500 / indexscan'

plot  "data/ryzen_sata/cyclic\_500-indexscan-0-io_uring.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_500-indexscan-0-sync.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_500-indexscan-0-worker.data"     using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_500 / seqscan'

plot "data/ryzen_sata/cyclic\_500-seqscan-0-io_uring.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_500-seqscan-0-sync.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_500-seqscan-0-worker.data"       using 1:4 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0.01:5674.212]
set title 'cyclic\_100 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/cyclic\_100-bitmapscan-0-io_uring.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_100-bitmapscan-0-sync.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_100-bitmapscan-0-worker.data"    using 1:4 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'cyclic\_100 / bitmapscan (prefetch)'

plot "data/ryzen_sata/cyclic\_100-bitmapscan-16-io_uring.data" using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_100-bitmapscan-16-sync.data"     using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_100-bitmapscan-16-worker.data"   using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_100 / indexscan'

plot  "data/ryzen_sata/cyclic\_100-indexscan-0-io_uring.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_100-indexscan-0-sync.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_100-indexscan-0-worker.data"     using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_100 / seqscan'

plot "data/ryzen_sata/cyclic\_100-seqscan-0-io_uring.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_100-seqscan-0-sync.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_100-seqscan-0-worker.data"       using 1:4 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0.01:3988.699]
set title 'cyclic\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/cyclic\_10-bitmapscan-0-io_uring.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_10-bitmapscan-0-sync.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_10-bitmapscan-0-worker.data"    using 1:4 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'cyclic\_10 / bitmapscan (prefetch)'

plot "data/ryzen_sata/cyclic\_10-bitmapscan-16-io_uring.data" using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_10-bitmapscan-16-sync.data"     using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_10-bitmapscan-16-worker.data"   using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_10 / indexscan'

plot  "data/ryzen_sata/cyclic\_10-indexscan-0-io_uring.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_10-indexscan-0-sync.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_10-indexscan-0-worker.data"     using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_10 / seqscan'

plot "data/ryzen_sata/cyclic\_10-seqscan-0-io_uring.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_10-seqscan-0-sync.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_10-seqscan-0-worker.data"       using 1:4 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0.01:3134.164]
set title 'cyclic\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/cyclic\_1-bitmapscan-0-io_uring.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_1-bitmapscan-0-sync.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_1-bitmapscan-0-worker.data"    using 1:4 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'cyclic\_1 / bitmapscan (prefetch)'

plot "data/ryzen_sata/cyclic\_1-bitmapscan-16-io_uring.data" using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_1-bitmapscan-16-sync.data"     using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_1-bitmapscan-16-worker.data"   using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_1 / indexscan'

plot  "data/ryzen_sata/cyclic\_1-indexscan-0-io_uring.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_1-indexscan-0-sync.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_1-indexscan-0-worker.data"     using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_1 / seqscan'

plot "data/ryzen_sata/cyclic\_1-seqscan-0-io_uring.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_1-seqscan-0-sync.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_1-seqscan-0-worker.data"       using 1:4 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0.01:2439.574]
set title 'cyclic / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/cyclic-bitmapscan-0-io_uring.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic-bitmapscan-0-sync.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic-bitmapscan-0-worker.data"    using 1:4 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'cyclic / bitmapscan (prefetch)'

plot "data/ryzen_sata/cyclic-bitmapscan-16-io_uring.data" using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic-bitmapscan-16-sync.data"     using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic-bitmapscan-16-worker.data"   using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'cyclic / indexscan'

plot  "data/ryzen_sata/cyclic-indexscan-0-io_uring.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic-indexscan-0-sync.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic-indexscan-0-worker.data"     using 1:4 with points pt 7 ps 0.75 title "worker"

set title 'cyclic / seqscan'

plot "data/ryzen_sata/cyclic-seqscan-0-io_uring.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic-seqscan-0-sync.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic-seqscan-0-worker.data"       using 1:4 with points pt 7 ps 0.75 title "worker"
