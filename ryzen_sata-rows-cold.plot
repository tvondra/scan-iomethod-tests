set terminal pdfcairo size 16,40 enhanced font 'Verdana,12'
set output 'ryzen_sata-rows-cold.pdf'
#set output 'ryzen_sata-rows-cold-scaled.pdf'


set log x
set yrange [0:]
set key top left

set xlabel 'selectivity'

set multiplot layout 11,4 rowsfirst
set xrange[0.01:100]
set yrange[0:45879.225]
set title 'uniform / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/uniform-bitmapscan-0-io_uring.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/uniform-bitmapscan-0-sync.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/uniform-bitmapscan-0-worker.data"    using 1:3 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'uniform / bitmapscan (prefetch)'

plot "data/ryzen_sata/uniform-bitmapscan-16-io_uring.data" using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/uniform-bitmapscan-16-sync.data"     using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/uniform-bitmapscan-16-worker.data"   using 1:3 with points pt 7 ps 0.75 title "worker"

set title 'uniform / indexscan'

plot  "data/ryzen_sata/uniform-indexscan-0-io_uring.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/uniform-indexscan-0-sync.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/uniform-indexscan-0-worker.data"     using 1:3 with points pt 7 ps 0.75 title "worker"

set title 'uniform / seqscan'

plot "data/ryzen_sata/uniform-seqscan-0-io_uring.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/uniform-seqscan-0-sync.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/uniform-seqscan-0-worker.data"       using 1:3 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0:42159.173]
set title 'linear\_500 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/linear\_500-bitmapscan-0-io_uring.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_500-bitmapscan-0-sync.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_500-bitmapscan-0-worker.data"    using 1:3 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'linear\_500 / bitmapscan (prefetch)'

plot "data/ryzen_sata/linear\_500-bitmapscan-16-io_uring.data" using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_500-bitmapscan-16-sync.data"     using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_500-bitmapscan-16-worker.data"   using 1:3 with points pt 7 ps 0.75 title "worker"

set title 'linear\_500 / indexscan'

plot  "data/ryzen_sata/linear\_500-indexscan-0-io_uring.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_500-indexscan-0-sync.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_500-indexscan-0-worker.data"     using 1:3 with points pt 7 ps 0.75 title "worker"

set title 'linear\_500 / seqscan'

plot "data/ryzen_sata/linear\_500-seqscan-0-io_uring.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_500-seqscan-0-sync.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_500-seqscan-0-worker.data"       using 1:3 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0:42921.653]
set title 'linear\_100 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/linear\_100-bitmapscan-0-io_uring.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_100-bitmapscan-0-sync.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_100-bitmapscan-0-worker.data"    using 1:3 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'linear\_100 / bitmapscan (prefetch)'

plot "data/ryzen_sata/linear\_100-bitmapscan-16-io_uring.data" using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_100-bitmapscan-16-sync.data"     using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_100-bitmapscan-16-worker.data"   using 1:3 with points pt 7 ps 0.75 title "worker"

set title 'linear\_100 / indexscan'

plot  "data/ryzen_sata/linear\_100-indexscan-0-io_uring.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_100-indexscan-0-sync.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_100-indexscan-0-worker.data"     using 1:3 with points pt 7 ps 0.75 title "worker"

set title 'linear\_100 / seqscan'

plot "data/ryzen_sata/linear\_100-seqscan-0-io_uring.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_100-seqscan-0-sync.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_100-seqscan-0-worker.data"       using 1:3 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0:33870.637]
set title 'linear\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/linear\_10-bitmapscan-0-io_uring.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_10-bitmapscan-0-sync.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_10-bitmapscan-0-worker.data"    using 1:3 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'linear\_10 / bitmapscan (prefetch)'

plot "data/ryzen_sata/linear\_10-bitmapscan-16-io_uring.data" using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_10-bitmapscan-16-sync.data"     using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_10-bitmapscan-16-worker.data"   using 1:3 with points pt 7 ps 0.75 title "worker"

set title 'linear\_10 / indexscan'

plot  "data/ryzen_sata/linear\_10-indexscan-0-io_uring.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_10-indexscan-0-sync.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_10-indexscan-0-worker.data"     using 1:3 with points pt 7 ps 0.75 title "worker"

set title 'linear\_10 / seqscan'

plot "data/ryzen_sata/linear\_10-seqscan-0-io_uring.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_10-seqscan-0-sync.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_10-seqscan-0-worker.data"       using 1:3 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0:10212.618]
set title 'linear\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/linear\_1-bitmapscan-0-io_uring.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_1-bitmapscan-0-sync.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_1-bitmapscan-0-worker.data"    using 1:3 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'linear\_1 / bitmapscan (prefetch)'

plot "data/ryzen_sata/linear\_1-bitmapscan-16-io_uring.data" using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_1-bitmapscan-16-sync.data"     using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_1-bitmapscan-16-worker.data"   using 1:3 with points pt 7 ps 0.75 title "worker"

set title 'linear\_1 / indexscan'

plot  "data/ryzen_sata/linear\_1-indexscan-0-io_uring.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_1-indexscan-0-sync.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_1-indexscan-0-worker.data"     using 1:3 with points pt 7 ps 0.75 title "worker"

set title 'linear\_1 / seqscan'

plot "data/ryzen_sata/linear\_1-seqscan-0-io_uring.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_1-seqscan-0-sync.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_1-seqscan-0-worker.data"       using 1:3 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0:2865.155]
set title 'linear / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/linear-bitmapscan-0-io_uring.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear-bitmapscan-0-sync.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear-bitmapscan-0-worker.data"    using 1:3 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'linear / bitmapscan (prefetch)'

plot "data/ryzen_sata/linear-bitmapscan-16-io_uring.data" using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear-bitmapscan-16-sync.data"     using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear-bitmapscan-16-worker.data"   using 1:3 with points pt 7 ps 0.75 title "worker"

set title 'linear / indexscan'

plot  "data/ryzen_sata/linear-indexscan-0-io_uring.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear-indexscan-0-sync.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear-indexscan-0-worker.data"     using 1:3 with points pt 7 ps 0.75 title "worker"

set title 'linear / seqscan'

plot "data/ryzen_sata/linear-seqscan-0-io_uring.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear-seqscan-0-sync.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear-seqscan-0-worker.data"       using 1:3 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0:40509.277]
set title 'cyclic\_500 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/cyclic\_500-bitmapscan-0-io_uring.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_500-bitmapscan-0-sync.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_500-bitmapscan-0-worker.data"    using 1:3 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'cyclic\_500 / bitmapscan (prefetch)'

plot "data/ryzen_sata/cyclic\_500-bitmapscan-16-io_uring.data" using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_500-bitmapscan-16-sync.data"     using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_500-bitmapscan-16-worker.data"   using 1:3 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_500 / indexscan'

plot  "data/ryzen_sata/cyclic\_500-indexscan-0-io_uring.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_500-indexscan-0-sync.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_500-indexscan-0-worker.data"     using 1:3 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_500 / seqscan'

plot "data/ryzen_sata/cyclic\_500-seqscan-0-io_uring.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_500-seqscan-0-sync.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_500-seqscan-0-worker.data"       using 1:3 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0:23864.167]
set title 'cyclic\_100 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/cyclic\_100-bitmapscan-0-io_uring.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_100-bitmapscan-0-sync.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_100-bitmapscan-0-worker.data"    using 1:3 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'cyclic\_100 / bitmapscan (prefetch)'

plot "data/ryzen_sata/cyclic\_100-bitmapscan-16-io_uring.data" using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_100-bitmapscan-16-sync.data"     using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_100-bitmapscan-16-worker.data"   using 1:3 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_100 / indexscan'

plot  "data/ryzen_sata/cyclic\_100-indexscan-0-io_uring.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_100-indexscan-0-sync.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_100-indexscan-0-worker.data"     using 1:3 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_100 / seqscan'

plot "data/ryzen_sata/cyclic\_100-seqscan-0-io_uring.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_100-seqscan-0-sync.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_100-seqscan-0-worker.data"       using 1:3 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0:6595.366]
set title 'cyclic\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/cyclic\_10-bitmapscan-0-io_uring.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_10-bitmapscan-0-sync.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_10-bitmapscan-0-worker.data"    using 1:3 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'cyclic\_10 / bitmapscan (prefetch)'

plot "data/ryzen_sata/cyclic\_10-bitmapscan-16-io_uring.data" using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_10-bitmapscan-16-sync.data"     using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_10-bitmapscan-16-worker.data"   using 1:3 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_10 / indexscan'

plot  "data/ryzen_sata/cyclic\_10-indexscan-0-io_uring.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_10-indexscan-0-sync.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_10-indexscan-0-worker.data"     using 1:3 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_10 / seqscan'

plot "data/ryzen_sata/cyclic\_10-seqscan-0-io_uring.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_10-seqscan-0-sync.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_10-seqscan-0-worker.data"       using 1:3 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0:4012.38]
set title 'cyclic\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/cyclic\_1-bitmapscan-0-io_uring.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_1-bitmapscan-0-sync.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_1-bitmapscan-0-worker.data"    using 1:3 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'cyclic\_1 / bitmapscan (prefetch)'

plot "data/ryzen_sata/cyclic\_1-bitmapscan-16-io_uring.data" using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_1-bitmapscan-16-sync.data"     using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_1-bitmapscan-16-worker.data"   using 1:3 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_1 / indexscan'

plot  "data/ryzen_sata/cyclic\_1-indexscan-0-io_uring.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_1-indexscan-0-sync.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_1-indexscan-0-worker.data"     using 1:3 with points pt 7 ps 0.75 title "worker"

set title 'cyclic\_1 / seqscan'

plot "data/ryzen_sata/cyclic\_1-seqscan-0-io_uring.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_1-seqscan-0-sync.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_1-seqscan-0-worker.data"       using 1:3 with points pt 7 ps 0.75 title "worker"
set xrange[0.01:100]
set yrange[0:3891.559]
set title 'cyclic / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/cyclic-bitmapscan-0-io_uring.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic-bitmapscan-0-sync.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic-bitmapscan-0-worker.data"    using 1:3 with points pt 7 ps 0.75 title "worker"

unset ylabel

set title 'cyclic / bitmapscan (prefetch)'

plot "data/ryzen_sata/cyclic-bitmapscan-16-io_uring.data" using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic-bitmapscan-16-sync.data"     using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic-bitmapscan-16-worker.data"   using 1:3 with points pt 7 ps 0.75 title "worker"

set title 'cyclic / indexscan'

plot  "data/ryzen_sata/cyclic-indexscan-0-io_uring.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic-indexscan-0-sync.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic-indexscan-0-worker.data"     using 1:3 with points pt 7 ps 0.75 title "worker"

set title 'cyclic / seqscan'

plot "data/ryzen_sata/cyclic-seqscan-0-io_uring.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic-seqscan-0-sync.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic-seqscan-0-worker.data"       using 1:3 with points pt 7 ps 0.75 title "worker"
