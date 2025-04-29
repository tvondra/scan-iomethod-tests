set terminal pdfcairo size 25,40 enhanced font 'Verdana,12'
set output 'ryzen_nvme-pages-warm-32GB-16-log.pdf'
#set output 'ryzen_nvme-pages-warm-32GB-log.pdf'


set log x
set log y
set yrange [0.01:]
set key top left

set xlabel 'selectivity'

set multiplot layout 11,5 rowsfirst
set xrange[0.1:100]
set yrange[0.01:9019.927]
set title 'uniform / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/uniform-bitmapscan-16-io_uring-3-32GB.data"  using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/uniform-bitmapscan-16-sync-3-32GB.data"      using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/uniform-bitmapscan-16-worker-3-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/uniform-bitmapscan-16-worker-12-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'uniform / indexscan'

plot  "data/ryzen_nvme/uniform-indexscan-16-io_uring-3-32GB.data"   using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/uniform-indexscan-16-sync-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/uniform-indexscan-16-worker-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/uniform-indexscan-16-worker-12-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'uniform / indexscan (prefetch)'

plot  "data/ryzen_nvme/uniform-indexscan-prefetch-16-io_uring-3-32GB.data"   using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/uniform-indexscan-prefetch-16-sync-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/uniform-indexscan-prefetch-16-worker-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/uniform-indexscan-prefetch-16-worker-12-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'uniform / seqscan'

plot "data/ryzen_nvme/uniform-seqscan-16-io_uring-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/uniform-seqscan-16-sync-3-32GB.data"         using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/uniform-seqscan-16-worker-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/uniform-seqscan-16-worker-12-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'uniform / smoothscan'

plot "data/ryzen_nvme/uniform-smoothscan-16-io_uring-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/uniform-smoothscan-16-sync-3-32GB.data"         using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/uniform-smoothscan-16-worker-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/uniform-smoothscan-16-worker-12-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.1:100]
set yrange[0.01:5349.277]
set title 'linear\_500 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/linear\_500-bitmapscan-16-io_uring-3-32GB.data"  using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_500-bitmapscan-16-sync-3-32GB.data"      using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_500-bitmapscan-16-worker-3-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_500-bitmapscan-16-worker-12-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear\_500 / indexscan'

plot  "data/ryzen_nvme/linear\_500-indexscan-16-io_uring-3-32GB.data"   using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_500-indexscan-16-sync-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_500-indexscan-16-worker-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_500-indexscan-16-worker-12-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_500 / indexscan (prefetch)'

plot  "data/ryzen_nvme/linear\_500-indexscan-prefetch-16-io_uring-3-32GB.data"   using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_500-indexscan-prefetch-16-sync-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_500-indexscan-prefetch-16-worker-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_500-indexscan-prefetch-16-worker-12-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_500 / seqscan'

plot "data/ryzen_nvme/linear\_500-seqscan-16-io_uring-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_500-seqscan-16-sync-3-32GB.data"         using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_500-seqscan-16-worker-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_500-seqscan-16-worker-12-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_500 / smoothscan'

plot "data/ryzen_nvme/linear\_500-smoothscan-16-io_uring-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_500-smoothscan-16-sync-3-32GB.data"         using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_500-smoothscan-16-worker-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_500-smoothscan-16-worker-12-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.1:100]
set yrange[0.01:7576.016]
set title 'linear\_100 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/linear\_100-bitmapscan-16-io_uring-3-32GB.data"  using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_100-bitmapscan-16-sync-3-32GB.data"      using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_100-bitmapscan-16-worker-3-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_100-bitmapscan-16-worker-12-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear\_100 / indexscan'

plot  "data/ryzen_nvme/linear\_100-indexscan-16-io_uring-3-32GB.data"   using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_100-indexscan-16-sync-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_100-indexscan-16-worker-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_100-indexscan-16-worker-12-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_100 / indexscan (prefetch)'

plot  "data/ryzen_nvme/linear\_100-indexscan-prefetch-16-io_uring-3-32GB.data"   using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_100-indexscan-prefetch-16-sync-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_100-indexscan-prefetch-16-worker-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_100-indexscan-prefetch-16-worker-12-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_100 / seqscan'

plot "data/ryzen_nvme/linear\_100-seqscan-16-io_uring-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_100-seqscan-16-sync-3-32GB.data"         using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_100-seqscan-16-worker-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_100-seqscan-16-worker-12-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_100 / smoothscan'

plot "data/ryzen_nvme/linear\_100-smoothscan-16-io_uring-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_100-smoothscan-16-sync-3-32GB.data"         using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_100-smoothscan-16-worker-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_100-smoothscan-16-worker-12-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.1:100]
set yrange[0.01:7527.048]
set title 'linear\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/linear\_10-bitmapscan-16-io_uring-3-32GB.data"  using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_10-bitmapscan-16-sync-3-32GB.data"      using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_10-bitmapscan-16-worker-3-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_10-bitmapscan-16-worker-12-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear\_10 / indexscan'

plot  "data/ryzen_nvme/linear\_10-indexscan-16-io_uring-3-32GB.data"   using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_10-indexscan-16-sync-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_10-indexscan-16-worker-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_10-indexscan-16-worker-12-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_10 / indexscan (prefetch)'

plot  "data/ryzen_nvme/linear\_10-indexscan-prefetch-16-io_uring-3-32GB.data"   using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_10-indexscan-prefetch-16-sync-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_10-indexscan-prefetch-16-worker-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_10-indexscan-prefetch-16-worker-12-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_10 / seqscan'

plot "data/ryzen_nvme/linear\_10-seqscan-16-io_uring-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_10-seqscan-16-sync-3-32GB.data"         using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_10-seqscan-16-worker-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_10-seqscan-16-worker-12-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_10 / smoothscan'

plot "data/ryzen_nvme/linear\_10-smoothscan-16-io_uring-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_10-smoothscan-16-sync-3-32GB.data"         using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_10-smoothscan-16-worker-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_10-smoothscan-16-worker-12-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.1:100]
set yrange[0.01:7197.924]
set title 'linear\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/linear\_1-bitmapscan-16-io_uring-3-32GB.data"  using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_1-bitmapscan-16-sync-3-32GB.data"      using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_1-bitmapscan-16-worker-3-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_1-bitmapscan-16-worker-12-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear\_1 / indexscan'

plot  "data/ryzen_nvme/linear\_1-indexscan-16-io_uring-3-32GB.data"   using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_1-indexscan-16-sync-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_1-indexscan-16-worker-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_1-indexscan-16-worker-12-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_1 / indexscan (prefetch)'

plot  "data/ryzen_nvme/linear\_1-indexscan-prefetch-16-io_uring-3-32GB.data"   using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_1-indexscan-prefetch-16-sync-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_1-indexscan-prefetch-16-worker-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_1-indexscan-prefetch-16-worker-12-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_1 / seqscan'

plot "data/ryzen_nvme/linear\_1-seqscan-16-io_uring-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_1-seqscan-16-sync-3-32GB.data"         using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_1-seqscan-16-worker-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_1-seqscan-16-worker-12-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_1 / smoothscan'

plot "data/ryzen_nvme/linear\_1-smoothscan-16-io_uring-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_1-smoothscan-16-sync-3-32GB.data"         using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_1-smoothscan-16-worker-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_1-smoothscan-16-worker-12-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.1:100]
set yrange[0.01:6178.003]
set title 'linear / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/linear-bitmapscan-16-io_uring-3-32GB.data"  using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear-bitmapscan-16-sync-3-32GB.data"      using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear-bitmapscan-16-worker-3-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear-bitmapscan-16-worker-12-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear / indexscan'

plot  "data/ryzen_nvme/linear-indexscan-16-io_uring-3-32GB.data"   using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear-indexscan-16-sync-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear-indexscan-16-worker-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear-indexscan-16-worker-12-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear / indexscan (prefetch)'

plot  "data/ryzen_nvme/linear-indexscan-prefetch-16-io_uring-3-32GB.data"   using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear-indexscan-prefetch-16-sync-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear-indexscan-prefetch-16-worker-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear-indexscan-prefetch-16-worker-12-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear / seqscan'

plot "data/ryzen_nvme/linear-seqscan-16-io_uring-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear-seqscan-16-sync-3-32GB.data"         using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear-seqscan-16-worker-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear-seqscan-16-worker-12-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear / smoothscan'

plot "data/ryzen_nvme/linear-smoothscan-16-io_uring-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear-smoothscan-16-sync-3-32GB.data"         using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear-smoothscan-16-worker-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear-smoothscan-16-worker-12-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.1:100]
set yrange[0.01:5403.276]
set title 'cyclic\_500 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/cyclic\_500-bitmapscan-16-io_uring-3-32GB.data"  using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_500-bitmapscan-16-sync-3-32GB.data"      using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_500-bitmapscan-16-worker-3-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_500-bitmapscan-16-worker-12-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic\_500 / indexscan'

plot  "data/ryzen_nvme/cyclic\_500-indexscan-16-io_uring-3-32GB.data"   using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_500-indexscan-16-sync-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_500-indexscan-16-worker-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_500-indexscan-16-worker-12-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_500 / indexscan (prefetch)'

plot  "data/ryzen_nvme/cyclic\_500-indexscan-prefetch-16-io_uring-3-32GB.data"   using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_500-indexscan-prefetch-16-sync-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_500-indexscan-prefetch-16-worker-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_500-indexscan-prefetch-16-worker-12-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_500 / seqscan'

plot "data/ryzen_nvme/cyclic\_500-seqscan-16-io_uring-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_500-seqscan-16-sync-3-32GB.data"         using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_500-seqscan-16-worker-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_500-seqscan-16-worker-12-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_500 / smoothscan'

plot "data/ryzen_nvme/cyclic\_500-smoothscan-16-io_uring-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_500-smoothscan-16-sync-3-32GB.data"         using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_500-smoothscan-16-worker-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_500-smoothscan-16-worker-12-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.1:100]
set yrange[0.01:6880.555]
set title 'cyclic\_100 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/cyclic\_100-bitmapscan-16-io_uring-3-32GB.data"  using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_100-bitmapscan-16-sync-3-32GB.data"      using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_100-bitmapscan-16-worker-3-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_100-bitmapscan-16-worker-12-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic\_100 / indexscan'

plot  "data/ryzen_nvme/cyclic\_100-indexscan-16-io_uring-3-32GB.data"   using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_100-indexscan-16-sync-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_100-indexscan-16-worker-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_100-indexscan-16-worker-12-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_100 / indexscan (prefetch)'

plot  "data/ryzen_nvme/cyclic\_100-indexscan-prefetch-16-io_uring-3-32GB.data"   using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_100-indexscan-prefetch-16-sync-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_100-indexscan-prefetch-16-worker-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_100-indexscan-prefetch-16-worker-12-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_100 / seqscan'

plot "data/ryzen_nvme/cyclic\_100-seqscan-16-io_uring-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_100-seqscan-16-sync-3-32GB.data"         using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_100-seqscan-16-worker-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_100-seqscan-16-worker-12-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_100 / smoothscan'

plot "data/ryzen_nvme/cyclic\_100-smoothscan-16-io_uring-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_100-smoothscan-16-sync-3-32GB.data"         using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_100-smoothscan-16-worker-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_100-smoothscan-16-worker-12-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.1:100]
set yrange[0.01:7589.735]
set title 'cyclic\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/cyclic\_10-bitmapscan-16-io_uring-3-32GB.data"  using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_10-bitmapscan-16-sync-3-32GB.data"      using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_10-bitmapscan-16-worker-3-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_10-bitmapscan-16-worker-12-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic\_10 / indexscan'

plot  "data/ryzen_nvme/cyclic\_10-indexscan-16-io_uring-3-32GB.data"   using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_10-indexscan-16-sync-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_10-indexscan-16-worker-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_10-indexscan-16-worker-12-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_10 / indexscan (prefetch)'

plot  "data/ryzen_nvme/cyclic\_10-indexscan-prefetch-16-io_uring-3-32GB.data"   using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_10-indexscan-prefetch-16-sync-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_10-indexscan-prefetch-16-worker-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_10-indexscan-prefetch-16-worker-12-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_10 / seqscan'

plot "data/ryzen_nvme/cyclic\_10-seqscan-16-io_uring-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_10-seqscan-16-sync-3-32GB.data"         using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_10-seqscan-16-worker-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_10-seqscan-16-worker-12-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_10 / smoothscan'

plot "data/ryzen_nvme/cyclic\_10-smoothscan-16-io_uring-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_10-smoothscan-16-sync-3-32GB.data"         using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_10-smoothscan-16-worker-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_10-smoothscan-16-worker-12-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.1:100]
set yrange[0.01:5784.653]
set title 'cyclic\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/cyclic\_1-bitmapscan-16-io_uring-3-32GB.data"  using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_1-bitmapscan-16-sync-3-32GB.data"      using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_1-bitmapscan-16-worker-3-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_1-bitmapscan-16-worker-12-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic\_1 / indexscan'

plot  "data/ryzen_nvme/cyclic\_1-indexscan-16-io_uring-3-32GB.data"   using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_1-indexscan-16-sync-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_1-indexscan-16-worker-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_1-indexscan-16-worker-12-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_1 / indexscan (prefetch)'

plot  "data/ryzen_nvme/cyclic\_1-indexscan-prefetch-16-io_uring-3-32GB.data"   using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_1-indexscan-prefetch-16-sync-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_1-indexscan-prefetch-16-worker-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_1-indexscan-prefetch-16-worker-12-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_1 / seqscan'

plot "data/ryzen_nvme/cyclic\_1-seqscan-16-io_uring-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_1-seqscan-16-sync-3-32GB.data"         using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_1-seqscan-16-worker-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_1-seqscan-16-worker-12-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_1 / smoothscan'

plot "data/ryzen_nvme/cyclic\_1-smoothscan-16-io_uring-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_1-smoothscan-16-sync-3-32GB.data"         using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_1-smoothscan-16-worker-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_1-smoothscan-16-worker-12-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.1:100]
set yrange[0.01:5600.745]
set title 'cyclic / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/cyclic-bitmapscan-16-io_uring-3-32GB.data"  using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic-bitmapscan-16-sync-3-32GB.data"      using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic-bitmapscan-16-worker-3-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic-bitmapscan-16-worker-12-32GB.data"    using 2:4 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic / indexscan'

plot  "data/ryzen_nvme/cyclic-indexscan-16-io_uring-3-32GB.data"   using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic-indexscan-16-sync-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic-indexscan-16-worker-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic-indexscan-16-worker-12-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic / indexscan (prefetch)'

plot  "data/ryzen_nvme/cyclic-indexscan-prefetch-16-io_uring-3-32GB.data"   using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic-indexscan-prefetch-16-sync-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic-indexscan-prefetch-16-worker-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic-indexscan-prefetch-16-worker-12-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic / seqscan'

plot "data/ryzen_nvme/cyclic-seqscan-16-io_uring-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic-seqscan-16-sync-3-32GB.data"         using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic-seqscan-16-worker-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic-seqscan-16-worker-12-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic / smoothscan'

plot "data/ryzen_nvme/cyclic-smoothscan-16-io_uring-3-32GB.data"     using 2:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic-smoothscan-16-sync-3-32GB.data"         using 2:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic-smoothscan-16-worker-3-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic-smoothscan-16-worker-12-32GB.data"       using 2:4 with points pt 7 ps 0.75 title "worker (12)"
