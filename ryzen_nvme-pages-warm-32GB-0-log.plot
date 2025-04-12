set terminal pdfcairo size 16,40 enhanced font 'Verdana,12'
set output 'ryzen_nvme-pages-warm-32GB-0-log.pdf'
#set output 'ryzen_nvme-pages-warm-32GB-log.pdf'


set log x
set log y
set yrange [0.01:]
set key top left

set xlabel 'selectivity'

set multiplot layout 11,3 rowsfirst
set xrange[0.1:100]
set yrange[0.01:7486.882]
set title 'uniform / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/uniform-bitmapscan-0-io_uring-3-32GB.data"  using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/uniform-bitmapscan-0-sync-3-32GB.data"      using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/uniform-bitmapscan-0-worker-3-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/uniform-bitmapscan-0-worker-12-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'uniform / indexscan'

plot  "data/ryzen_nvme/uniform-indexscan-0-io_uring-3-32GB.data"   using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/uniform-indexscan-0-sync-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/uniform-indexscan-0-worker-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/uniform-indexscan-0-worker-12-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'uniform / seqscan'

plot "data/ryzen_nvme/uniform-seqscan-0-io_uring-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/uniform-seqscan-0-sync-3-32GB.data"         using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/uniform-seqscan-0-worker-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/uniform-seqscan-0-worker-12-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.1:100]
set yrange[0.01:4313.418]
set title 'linear\_500 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/linear\_500-bitmapscan-0-io_uring-3-32GB.data"  using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_500-bitmapscan-0-sync-3-32GB.data"      using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_500-bitmapscan-0-worker-3-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_500-bitmapscan-0-worker-12-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear\_500 / indexscan'

plot  "data/ryzen_nvme/linear\_500-indexscan-0-io_uring-3-32GB.data"   using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_500-indexscan-0-sync-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_500-indexscan-0-worker-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_500-indexscan-0-worker-12-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_500 / seqscan'

plot "data/ryzen_nvme/linear\_500-seqscan-0-io_uring-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_500-seqscan-0-sync-3-32GB.data"         using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_500-seqscan-0-worker-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_500-seqscan-0-worker-12-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.1:100]
set yrange[0.01:5731.153]
set title 'linear\_100 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/linear\_100-bitmapscan-0-io_uring-3-32GB.data"  using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_100-bitmapscan-0-sync-3-32GB.data"      using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_100-bitmapscan-0-worker-3-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_100-bitmapscan-0-worker-12-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear\_100 / indexscan'

plot  "data/ryzen_nvme/linear\_100-indexscan-0-io_uring-3-32GB.data"   using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_100-indexscan-0-sync-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_100-indexscan-0-worker-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_100-indexscan-0-worker-12-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_100 / seqscan'

plot "data/ryzen_nvme/linear\_100-seqscan-0-io_uring-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_100-seqscan-0-sync-3-32GB.data"         using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_100-seqscan-0-worker-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_100-seqscan-0-worker-12-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.1:100]
set yrange[0.01:3964.515]
set title 'linear\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/linear\_10-bitmapscan-0-io_uring-3-32GB.data"  using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_10-bitmapscan-0-sync-3-32GB.data"      using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_10-bitmapscan-0-worker-3-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_10-bitmapscan-0-worker-12-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear\_10 / indexscan'

plot  "data/ryzen_nvme/linear\_10-indexscan-0-io_uring-3-32GB.data"   using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_10-indexscan-0-sync-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_10-indexscan-0-worker-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_10-indexscan-0-worker-12-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_10 / seqscan'

plot "data/ryzen_nvme/linear\_10-seqscan-0-io_uring-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_10-seqscan-0-sync-3-32GB.data"         using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_10-seqscan-0-worker-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_10-seqscan-0-worker-12-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.1:100]
set yrange[0.01:3232.198]
set title 'linear\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/linear\_1-bitmapscan-0-io_uring-3-32GB.data"  using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_1-bitmapscan-0-sync-3-32GB.data"      using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_1-bitmapscan-0-worker-3-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_1-bitmapscan-0-worker-12-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear\_1 / indexscan'

plot  "data/ryzen_nvme/linear\_1-indexscan-0-io_uring-3-32GB.data"   using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_1-indexscan-0-sync-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_1-indexscan-0-worker-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_1-indexscan-0-worker-12-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_1 / seqscan'

plot "data/ryzen_nvme/linear\_1-seqscan-0-io_uring-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_1-seqscan-0-sync-3-32GB.data"         using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_1-seqscan-0-worker-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_1-seqscan-0-worker-12-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.1:100]
set yrange[0.01:1679.316]
set title 'linear / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/linear-bitmapscan-0-io_uring-3-32GB.data"  using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear-bitmapscan-0-sync-3-32GB.data"      using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear-bitmapscan-0-worker-3-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear-bitmapscan-0-worker-12-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear / indexscan'

plot  "data/ryzen_nvme/linear-indexscan-0-io_uring-3-32GB.data"   using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear-indexscan-0-sync-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear-indexscan-0-worker-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear-indexscan-0-worker-12-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear / seqscan'

plot "data/ryzen_nvme/linear-seqscan-0-io_uring-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear-seqscan-0-sync-3-32GB.data"         using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear-seqscan-0-worker-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear-seqscan-0-worker-12-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.1:100]
set yrange[0.01:4336.904]
set title 'cyclic\_500 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/cyclic\_500-bitmapscan-0-io_uring-3-32GB.data"  using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_500-bitmapscan-0-sync-3-32GB.data"      using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_500-bitmapscan-0-worker-3-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_500-bitmapscan-0-worker-12-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic\_500 / indexscan'

plot  "data/ryzen_nvme/cyclic\_500-indexscan-0-io_uring-3-32GB.data"   using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_500-indexscan-0-sync-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_500-indexscan-0-worker-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_500-indexscan-0-worker-12-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_500 / seqscan'

plot "data/ryzen_nvme/cyclic\_500-seqscan-0-io_uring-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_500-seqscan-0-sync-3-32GB.data"         using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_500-seqscan-0-worker-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_500-seqscan-0-worker-12-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.1:100]
set yrange[0.01:5724.487]
set title 'cyclic\_100 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/cyclic\_100-bitmapscan-0-io_uring-3-32GB.data"  using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_100-bitmapscan-0-sync-3-32GB.data"      using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_100-bitmapscan-0-worker-3-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_100-bitmapscan-0-worker-12-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic\_100 / indexscan'

plot  "data/ryzen_nvme/cyclic\_100-indexscan-0-io_uring-3-32GB.data"   using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_100-indexscan-0-sync-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_100-indexscan-0-worker-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_100-indexscan-0-worker-12-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_100 / seqscan'

plot "data/ryzen_nvme/cyclic\_100-seqscan-0-io_uring-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_100-seqscan-0-sync-3-32GB.data"         using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_100-seqscan-0-worker-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_100-seqscan-0-worker-12-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.1:100]
set yrange[0.01:3961.211]
set title 'cyclic\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/cyclic\_10-bitmapscan-0-io_uring-3-32GB.data"  using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_10-bitmapscan-0-sync-3-32GB.data"      using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_10-bitmapscan-0-worker-3-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_10-bitmapscan-0-worker-12-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic\_10 / indexscan'

plot  "data/ryzen_nvme/cyclic\_10-indexscan-0-io_uring-3-32GB.data"   using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_10-indexscan-0-sync-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_10-indexscan-0-worker-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_10-indexscan-0-worker-12-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_10 / seqscan'

plot "data/ryzen_nvme/cyclic\_10-seqscan-0-io_uring-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_10-seqscan-0-sync-3-32GB.data"         using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_10-seqscan-0-worker-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_10-seqscan-0-worker-12-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.1:100]
set yrange[0.01:3247.502]
set title 'cyclic\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/cyclic\_1-bitmapscan-0-io_uring-3-32GB.data"  using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_1-bitmapscan-0-sync-3-32GB.data"      using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_1-bitmapscan-0-worker-3-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_1-bitmapscan-0-worker-12-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic\_1 / indexscan'

plot  "data/ryzen_nvme/cyclic\_1-indexscan-0-io_uring-3-32GB.data"   using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_1-indexscan-0-sync-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_1-indexscan-0-worker-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_1-indexscan-0-worker-12-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_1 / seqscan'

plot "data/ryzen_nvme/cyclic\_1-seqscan-0-io_uring-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_1-seqscan-0-sync-3-32GB.data"         using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_1-seqscan-0-worker-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_1-seqscan-0-worker-12-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.1:100]
set yrange[0.01:2390.601]
set title 'cyclic / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/cyclic-bitmapscan-0-io_uring-3-32GB.data"  using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic-bitmapscan-0-sync-3-32GB.data"      using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic-bitmapscan-0-worker-3-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic-bitmapscan-0-worker-12-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic / indexscan'

plot  "data/ryzen_nvme/cyclic-indexscan-0-io_uring-3-32GB.data"   using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic-indexscan-0-sync-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic-indexscan-0-worker-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic-indexscan-0-worker-12-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic / seqscan'

plot "data/ryzen_nvme/cyclic-seqscan-0-io_uring-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic-seqscan-0-sync-3-32GB.data"         using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic-seqscan-0-worker-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic-seqscan-0-worker-12-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker (12)"
