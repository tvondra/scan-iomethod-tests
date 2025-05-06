set terminal pdfcairo size 25,35 enhanced font 'Verdana,12'
set output 'ryzen_nvme-pages-cold-4GB-16-log.pdf'
#set output 'ryzen_nvme-pages-cold-4GB-log.pdf'


set log x
set log y
set yrange [0.01:]
set key bottom right

set xlabel 'selectivity'

set multiplot layout 9,5 rowsfirst
set xrange[0.0143999884800092:100]
set yrange[0.01:22872.08]
set title 'uniform / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/uniform-bitmapscan-off-16-io_uring-3-4GB.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/uniform-bitmapscan-off-16-sync-3-4GB.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/uniform-bitmapscan-off-16-worker-3-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/uniform-bitmapscan-off-16-worker-12-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/uniform-bitmapscan-17-off-16-sync-0-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "17"

unset ylabel

set title 'uniform / indexscan'

plot  "data/ryzen_nvme/uniform-indexscan-off-16-io_uring-3-4GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/uniform-indexscan-off-16-sync-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/uniform-indexscan-off-16-worker-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/uniform-indexscan-off-16-worker-12-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/uniform-indexscan-17-off-16-sync-0-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "17"

set title 'uniform / indexscan (prefetch)'

plot  "data/ryzen_nvme/uniform-indexscan-on-16-io_uring-3-4GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/uniform-indexscan-on-16-sync-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/uniform-indexscan-on-16-worker-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/uniform-indexscan-on-16-worker-12-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'uniform / seqscan'

plot "data/ryzen_nvme/uniform-seqscan-off-16-io_uring-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/uniform-seqscan-off-16-sync-3-4GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/uniform-seqscan-off-16-worker-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/uniform-seqscan-off-16-worker-12-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/uniform-seqscan-17-off-16-sync-0-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "17"

set title 'uniform / smoothscan'

plot "data/ryzen_nvme/uniform-smoothscan-off-16-io_uring-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/uniform-smoothscan-off-16-sync-3-4GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/uniform-smoothscan-off-16-worker-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/uniform-smoothscan-off-16-worker-12-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.00719999424000461:100]
set yrange[0.01:20611.148]
set title 'linear\_25 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/linear\_25-bitmapscan-off-16-io_uring-3-4GB.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_25-bitmapscan-off-16-sync-3-4GB.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_25-bitmapscan-off-16-worker-3-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_25-bitmapscan-off-16-worker-12-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/linear\_25-bitmapscan-17-off-16-sync-0-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "17"

unset ylabel

set title 'linear\_25 / indexscan'

plot  "data/ryzen_nvme/linear\_25-indexscan-off-16-io_uring-3-4GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_25-indexscan-off-16-sync-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_25-indexscan-off-16-worker-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_25-indexscan-off-16-worker-12-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/linear\_25-indexscan-17-off-16-sync-0-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "17"

set title 'linear\_25 / indexscan (prefetch)'

plot  "data/ryzen_nvme/linear\_25-indexscan-on-16-io_uring-3-4GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_25-indexscan-on-16-sync-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_25-indexscan-on-16-worker-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_25-indexscan-on-16-worker-12-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_25 / seqscan'

plot "data/ryzen_nvme/linear\_25-seqscan-off-16-io_uring-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_25-seqscan-off-16-sync-3-4GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_25-seqscan-off-16-worker-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_25-seqscan-off-16-worker-12-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/linear\_25-seqscan-17-off-16-sync-0-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "17"

set title 'linear\_25 / smoothscan'

plot "data/ryzen_nvme/linear\_25-smoothscan-off-16-io_uring-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_25-smoothscan-off-16-sync-3-4GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_25-smoothscan-off-16-worker-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_25-smoothscan-off-16-worker-12-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.0059399952480038:100]
set yrange[0.01:22309.395]
set title 'linear\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/linear\_10-bitmapscan-off-16-io_uring-3-4GB.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_10-bitmapscan-off-16-sync-3-4GB.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_10-bitmapscan-off-16-worker-3-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_10-bitmapscan-off-16-worker-12-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/linear\_10-bitmapscan-17-off-16-sync-0-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "17"

unset ylabel

set title 'linear\_10 / indexscan'

plot  "data/ryzen_nvme/linear\_10-indexscan-off-16-io_uring-3-4GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_10-indexscan-off-16-sync-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_10-indexscan-off-16-worker-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_10-indexscan-off-16-worker-12-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/linear\_10-indexscan-17-off-16-sync-0-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "17"

set title 'linear\_10 / indexscan (prefetch)'

plot  "data/ryzen_nvme/linear\_10-indexscan-on-16-io_uring-3-4GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_10-indexscan-on-16-sync-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_10-indexscan-on-16-worker-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_10-indexscan-on-16-worker-12-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_10 / seqscan'

plot "data/ryzen_nvme/linear\_10-seqscan-off-16-io_uring-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_10-seqscan-off-16-sync-3-4GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_10-seqscan-off-16-worker-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_10-seqscan-off-16-worker-12-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/linear\_10-seqscan-17-off-16-sync-0-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "17"

set title 'linear\_10 / smoothscan'

plot "data/ryzen_nvme/linear\_10-smoothscan-off-16-io_uring-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_10-smoothscan-off-16-sync-3-4GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_10-smoothscan-off-16-worker-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_10-smoothscan-off-16-worker-12-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.0104399916480067:100]
set yrange[0.01:22813.413]
set title 'linear\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/linear\_1-bitmapscan-off-16-io_uring-3-4GB.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_1-bitmapscan-off-16-sync-3-4GB.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_1-bitmapscan-off-16-worker-3-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_1-bitmapscan-off-16-worker-12-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/linear\_1-bitmapscan-17-off-16-sync-0-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "17"

unset ylabel

set title 'linear\_1 / indexscan'

plot  "data/ryzen_nvme/linear\_1-indexscan-off-16-io_uring-3-4GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_1-indexscan-off-16-sync-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_1-indexscan-off-16-worker-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_1-indexscan-off-16-worker-12-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/linear\_1-indexscan-17-off-16-sync-0-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "17"

set title 'linear\_1 / indexscan (prefetch)'

plot  "data/ryzen_nvme/linear\_1-indexscan-on-16-io_uring-3-4GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_1-indexscan-on-16-sync-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_1-indexscan-on-16-worker-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_1-indexscan-on-16-worker-12-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_1 / seqscan'

plot "data/ryzen_nvme/linear\_1-seqscan-off-16-io_uring-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_1-seqscan-off-16-sync-3-4GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_1-seqscan-off-16-worker-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_1-seqscan-off-16-worker-12-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/linear\_1-seqscan-17-off-16-sync-0-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "17"

set title 'linear\_1 / smoothscan'

plot "data/ryzen_nvme/linear\_1-smoothscan-off-16-io_uring-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_1-smoothscan-off-16-sync-3-4GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_1-smoothscan-off-16-worker-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_1-smoothscan-off-16-worker-12-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.00107999913600069:100]
set yrange[0.01:8818.598]
set title 'linear / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/linear-bitmapscan-off-16-io_uring-3-4GB.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear-bitmapscan-off-16-sync-3-4GB.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear-bitmapscan-off-16-worker-3-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear-bitmapscan-off-16-worker-12-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/linear-bitmapscan-17-off-16-sync-0-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "17"

unset ylabel

set title 'linear / indexscan'

plot  "data/ryzen_nvme/linear-indexscan-off-16-io_uring-3-4GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear-indexscan-off-16-sync-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear-indexscan-off-16-worker-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear-indexscan-off-16-worker-12-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/linear-indexscan-17-off-16-sync-0-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "17"

set title 'linear / indexscan (prefetch)'

plot  "data/ryzen_nvme/linear-indexscan-on-16-io_uring-3-4GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear-indexscan-on-16-sync-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear-indexscan-on-16-worker-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear-indexscan-on-16-worker-12-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear / seqscan'

plot "data/ryzen_nvme/linear-seqscan-off-16-io_uring-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear-seqscan-off-16-sync-3-4GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear-seqscan-off-16-worker-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear-seqscan-off-16-worker-12-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/linear-seqscan-17-off-16-sync-0-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "17"

set title 'linear / smoothscan'

plot "data/ryzen_nvme/linear-smoothscan-off-16-io_uring-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear-smoothscan-off-16-sync-3-4GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear-smoothscan-off-16-worker-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear-smoothscan-off-16-worker-12-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.00665999467200426:100]
set yrange[0.01:16716.868]
set title 'cyclic\_25 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/cyclic\_25-bitmapscan-off-16-io_uring-3-4GB.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_25-bitmapscan-off-16-sync-3-4GB.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_25-bitmapscan-off-16-worker-3-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_25-bitmapscan-off-16-worker-12-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/cyclic\_25-bitmapscan-17-off-16-sync-0-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "17"

unset ylabel

set title 'cyclic\_25 / indexscan'

plot  "data/ryzen_nvme/cyclic\_25-indexscan-off-16-io_uring-3-4GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_25-indexscan-off-16-sync-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_25-indexscan-off-16-worker-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_25-indexscan-off-16-worker-12-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/cyclic\_25-indexscan-17-off-16-sync-0-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "17"

set title 'cyclic\_25 / indexscan (prefetch)'

plot  "data/ryzen_nvme/cyclic\_25-indexscan-on-16-io_uring-3-4GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_25-indexscan-on-16-sync-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_25-indexscan-on-16-worker-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_25-indexscan-on-16-worker-12-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_25 / seqscan'

plot "data/ryzen_nvme/cyclic\_25-seqscan-off-16-io_uring-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_25-seqscan-off-16-sync-3-4GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_25-seqscan-off-16-worker-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_25-seqscan-off-16-worker-12-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/cyclic\_25-seqscan-17-off-16-sync-0-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "17"

set title 'cyclic\_25 / smoothscan'

plot "data/ryzen_nvme/cyclic\_25-smoothscan-off-16-io_uring-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_25-smoothscan-off-16-sync-3-4GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_25-smoothscan-off-16-worker-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_25-smoothscan-off-16-worker-12-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.00845999323200541:100]
set yrange[0.01:11991.474]
set title 'cyclic\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/cyclic\_10-bitmapscan-off-16-io_uring-3-4GB.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_10-bitmapscan-off-16-sync-3-4GB.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_10-bitmapscan-off-16-worker-3-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_10-bitmapscan-off-16-worker-12-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/cyclic\_10-bitmapscan-17-off-16-sync-0-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "17"

unset ylabel

set title 'cyclic\_10 / indexscan'

plot  "data/ryzen_nvme/cyclic\_10-indexscan-off-16-io_uring-3-4GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_10-indexscan-off-16-sync-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_10-indexscan-off-16-worker-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_10-indexscan-off-16-worker-12-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/cyclic\_10-indexscan-17-off-16-sync-0-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "17"

set title 'cyclic\_10 / indexscan (prefetch)'

plot  "data/ryzen_nvme/cyclic\_10-indexscan-on-16-io_uring-3-4GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_10-indexscan-on-16-sync-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_10-indexscan-on-16-worker-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_10-indexscan-on-16-worker-12-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_10 / seqscan'

plot "data/ryzen_nvme/cyclic\_10-seqscan-off-16-io_uring-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_10-seqscan-off-16-sync-3-4GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_10-seqscan-off-16-worker-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_10-seqscan-off-16-worker-12-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/cyclic\_10-seqscan-17-off-16-sync-0-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "17"

set title 'cyclic\_10 / smoothscan'

plot "data/ryzen_nvme/cyclic\_10-smoothscan-off-16-io_uring-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_10-smoothscan-off-16-sync-3-4GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_10-smoothscan-off-16-worker-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_10-smoothscan-off-16-worker-12-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.0104399916480067:100]
set yrange[0.01:9155.852]
set title 'cyclic\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/cyclic\_1-bitmapscan-off-16-io_uring-3-4GB.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_1-bitmapscan-off-16-sync-3-4GB.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_1-bitmapscan-off-16-worker-3-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_1-bitmapscan-off-16-worker-12-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/cyclic\_1-bitmapscan-17-off-16-sync-0-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "17"

unset ylabel

set title 'cyclic\_1 / indexscan'

plot  "data/ryzen_nvme/cyclic\_1-indexscan-off-16-io_uring-3-4GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_1-indexscan-off-16-sync-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_1-indexscan-off-16-worker-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_1-indexscan-off-16-worker-12-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/cyclic\_1-indexscan-17-off-16-sync-0-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "17"

set title 'cyclic\_1 / indexscan (prefetch)'

plot  "data/ryzen_nvme/cyclic\_1-indexscan-on-16-io_uring-3-4GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_1-indexscan-on-16-sync-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_1-indexscan-on-16-worker-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_1-indexscan-on-16-worker-12-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_1 / seqscan'

plot "data/ryzen_nvme/cyclic\_1-seqscan-off-16-io_uring-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_1-seqscan-off-16-sync-3-4GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_1-seqscan-off-16-worker-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_1-seqscan-off-16-worker-12-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/cyclic\_1-seqscan-17-off-16-sync-0-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "17"

set title 'cyclic\_1 / smoothscan'

plot "data/ryzen_nvme/cyclic\_1-smoothscan-off-16-io_uring-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_1-smoothscan-off-16-sync-3-4GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_1-smoothscan-off-16-worker-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_1-smoothscan-off-16-worker-12-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.0179999856000115:100]
set yrange[0.01:15744.598]
set title 'cyclic / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/cyclic-bitmapscan-off-16-io_uring-3-4GB.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic-bitmapscan-off-16-sync-3-4GB.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic-bitmapscan-off-16-worker-3-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic-bitmapscan-off-16-worker-12-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/cyclic-bitmapscan-17-off-16-sync-0-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "17"

unset ylabel

set title 'cyclic / indexscan'

plot  "data/ryzen_nvme/cyclic-indexscan-off-16-io_uring-3-4GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic-indexscan-off-16-sync-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic-indexscan-off-16-worker-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic-indexscan-off-16-worker-12-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/cyclic-indexscan-17-off-16-sync-0-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "17"

set title 'cyclic / indexscan (prefetch)'

plot  "data/ryzen_nvme/cyclic-indexscan-on-16-io_uring-3-4GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic-indexscan-on-16-sync-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic-indexscan-on-16-worker-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic-indexscan-on-16-worker-12-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic / seqscan'

plot "data/ryzen_nvme/cyclic-seqscan-off-16-io_uring-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic-seqscan-off-16-sync-3-4GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic-seqscan-off-16-worker-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic-seqscan-off-16-worker-12-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/cyclic-seqscan-17-off-16-sync-0-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "17"

set title 'cyclic / smoothscan'

plot "data/ryzen_nvme/cyclic-smoothscan-off-16-io_uring-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic-smoothscan-off-16-sync-3-4GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic-smoothscan-off-16-worker-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic-smoothscan-off-16-worker-12-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"
