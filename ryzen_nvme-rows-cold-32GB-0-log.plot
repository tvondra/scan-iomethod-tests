set terminal pdfcairo size 16,40 enhanced font 'Verdana,12'
set output 'ryzen_nvme-rows-cold-32GB-0-log.pdf'
#set output 'ryzen_nvme-rows-cold-32GB-log.pdf'


set log x
set log y
set yrange [0.01:]
set key top left

set xlabel 'selectivity'

set multiplot layout 11,3 rowsfirst
set xrange[0.01:100]
set yrange[0.01:28661.778]
set title 'uniform / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/uniform-bitmapscan-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/uniform-bitmapscan-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/uniform-bitmapscan-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/uniform-bitmapscan-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'uniform / indexscan'

plot  "data/ryzen_nvme/uniform-indexscan-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/uniform-indexscan-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/uniform-indexscan-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/uniform-indexscan-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'uniform / seqscan'

plot "data/ryzen_nvme/uniform-seqscan-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/uniform-seqscan-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/uniform-seqscan-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/uniform-seqscan-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:25550.564]
set title 'linear\_500 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/linear\_500-bitmapscan-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_500-bitmapscan-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_500-bitmapscan-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_500-bitmapscan-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear\_500 / indexscan'

plot  "data/ryzen_nvme/linear\_500-indexscan-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_500-indexscan-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_500-indexscan-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_500-indexscan-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_500 / seqscan'

plot "data/ryzen_nvme/linear\_500-seqscan-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_500-seqscan-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_500-seqscan-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_500-seqscan-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:26067.922]
set title 'linear\_100 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/linear\_100-bitmapscan-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_100-bitmapscan-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_100-bitmapscan-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_100-bitmapscan-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear\_100 / indexscan'

plot  "data/ryzen_nvme/linear\_100-indexscan-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_100-indexscan-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_100-indexscan-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_100-indexscan-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_100 / seqscan'

plot "data/ryzen_nvme/linear\_100-seqscan-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_100-seqscan-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_100-seqscan-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_100-seqscan-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:20469.822]
set title 'linear\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/linear\_10-bitmapscan-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_10-bitmapscan-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_10-bitmapscan-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_10-bitmapscan-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear\_10 / indexscan'

plot  "data/ryzen_nvme/linear\_10-indexscan-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_10-indexscan-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_10-indexscan-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_10-indexscan-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_10 / seqscan'

plot "data/ryzen_nvme/linear\_10-seqscan-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_10-seqscan-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_10-seqscan-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_10-seqscan-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:6223.482]
set title 'linear\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/linear\_1-bitmapscan-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_1-bitmapscan-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_1-bitmapscan-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_1-bitmapscan-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear\_1 / indexscan'

plot  "data/ryzen_nvme/linear\_1-indexscan-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_1-indexscan-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_1-indexscan-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_1-indexscan-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_1 / seqscan'

plot "data/ryzen_nvme/linear\_1-seqscan-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_1-seqscan-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_1-seqscan-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_1-seqscan-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:2257.851]
set title 'linear / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/linear-bitmapscan-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear-bitmapscan-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear-bitmapscan-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear-bitmapscan-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear / indexscan'

plot  "data/ryzen_nvme/linear-indexscan-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear-indexscan-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear-indexscan-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear-indexscan-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear / seqscan'

plot "data/ryzen_nvme/linear-seqscan-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear-seqscan-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear-seqscan-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear-seqscan-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:24221.469]
set title 'cyclic\_500 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/cyclic\_500-bitmapscan-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_500-bitmapscan-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_500-bitmapscan-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_500-bitmapscan-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic\_500 / indexscan'

plot  "data/ryzen_nvme/cyclic\_500-indexscan-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_500-indexscan-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_500-indexscan-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_500-indexscan-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_500 / seqscan'

plot "data/ryzen_nvme/cyclic\_500-seqscan-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_500-seqscan-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_500-seqscan-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_500-seqscan-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:14790.392]
set title 'cyclic\_100 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/cyclic\_100-bitmapscan-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_100-bitmapscan-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_100-bitmapscan-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_100-bitmapscan-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic\_100 / indexscan'

plot  "data/ryzen_nvme/cyclic\_100-indexscan-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_100-indexscan-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_100-indexscan-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_100-indexscan-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_100 / seqscan'

plot "data/ryzen_nvme/cyclic\_100-seqscan-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_100-seqscan-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_100-seqscan-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_100-seqscan-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:5359.715]
set title 'cyclic\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/cyclic\_10-bitmapscan-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_10-bitmapscan-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_10-bitmapscan-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_10-bitmapscan-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic\_10 / indexscan'

plot  "data/ryzen_nvme/cyclic\_10-indexscan-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_10-indexscan-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_10-indexscan-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_10-indexscan-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_10 / seqscan'

plot "data/ryzen_nvme/cyclic\_10-seqscan-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_10-seqscan-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_10-seqscan-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_10-seqscan-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:3863.923]
set title 'cyclic\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/cyclic\_1-bitmapscan-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_1-bitmapscan-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_1-bitmapscan-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_1-bitmapscan-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic\_1 / indexscan'

plot  "data/ryzen_nvme/cyclic\_1-indexscan-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_1-indexscan-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_1-indexscan-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_1-indexscan-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_1 / seqscan'

plot "data/ryzen_nvme/cyclic\_1-seqscan-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_1-seqscan-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_1-seqscan-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_1-seqscan-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:2900.011]
set title 'cyclic / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/cyclic-bitmapscan-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic-bitmapscan-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic-bitmapscan-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic-bitmapscan-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic / indexscan'

plot  "data/ryzen_nvme/cyclic-indexscan-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic-indexscan-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic-indexscan-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic-indexscan-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic / seqscan'

plot "data/ryzen_nvme/cyclic-seqscan-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic-seqscan-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic-seqscan-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic-seqscan-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
