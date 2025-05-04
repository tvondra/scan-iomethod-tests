set terminal pdfcairo size 25,35 enhanced font 'Verdana,12'
set output 'ryzen_nvme-rows-cold-32GB-0.pdf'
#set output 'ryzen_nvme-rows-cold-scaled.pdf'


set log x
set yrange [0:]
set key top left

set xlabel 'selectivity'

set multiplot layout 9,5 rowsfirst
set xrange[0.000799999360000512:100]
set yrange[0:22872.08]
set title 'uniform / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/uniform-bitmapscan-off-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/uniform-bitmapscan-off-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/uniform-bitmapscan-off-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/uniform-bitmapscan-off-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'uniform / indexscan'

plot  "data/ryzen_nvme/uniform-indexscan-off-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/uniform-indexscan-off-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/uniform-indexscan-off-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/uniform-indexscan-off-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'uniform / indexscan (prefetch)'

plot  "data/ryzen_nvme/uniform-indexscan-on-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/uniform-indexscan-on-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/uniform-indexscan-on-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/uniform-indexscan-on-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'uniform / seqscan'

plot "data/ryzen_nvme/uniform-seqscan-off-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/uniform-seqscan-off-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/uniform-seqscan-off-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/uniform-seqscan-off-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'uniform / smoothscan'

plot "data/ryzen_nvme/uniform-smoothscan-off-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/uniform-smoothscan-off-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/uniform-smoothscan-off-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/uniform-smoothscan-off-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.000399999680000256:100]
set yrange[0:20611.148]
set title 'linear\_25 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/linear\_25-bitmapscan-off-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_25-bitmapscan-off-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_25-bitmapscan-off-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_25-bitmapscan-off-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear\_25 / indexscan'

plot  "data/ryzen_nvme/linear\_25-indexscan-off-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_25-indexscan-off-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_25-indexscan-off-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_25-indexscan-off-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_25 / indexscan (prefetch)'

plot  "data/ryzen_nvme/linear\_25-indexscan-on-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_25-indexscan-on-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_25-indexscan-on-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_25-indexscan-on-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_25 / seqscan'

plot "data/ryzen_nvme/linear\_25-seqscan-off-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_25-seqscan-off-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_25-seqscan-off-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_25-seqscan-off-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_25 / smoothscan'

plot "data/ryzen_nvme/linear\_25-smoothscan-off-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_25-smoothscan-off-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_25-smoothscan-off-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_25-smoothscan-off-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.000329999736000211:100]
set yrange[0:22309.395]
set title 'linear\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/linear\_10-bitmapscan-off-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_10-bitmapscan-off-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_10-bitmapscan-off-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_10-bitmapscan-off-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear\_10 / indexscan'

plot  "data/ryzen_nvme/linear\_10-indexscan-off-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_10-indexscan-off-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_10-indexscan-off-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_10-indexscan-off-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_10 / indexscan (prefetch)'

plot  "data/ryzen_nvme/linear\_10-indexscan-on-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_10-indexscan-on-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_10-indexscan-on-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_10-indexscan-on-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_10 / seqscan'

plot "data/ryzen_nvme/linear\_10-seqscan-off-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_10-seqscan-off-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_10-seqscan-off-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_10-seqscan-off-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_10 / smoothscan'

plot "data/ryzen_nvme/linear\_10-smoothscan-off-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_10-smoothscan-off-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_10-smoothscan-off-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_10-smoothscan-off-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.000579999536000371:100]
set yrange[0:22813.413]
set title 'linear\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/linear\_1-bitmapscan-off-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_1-bitmapscan-off-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_1-bitmapscan-off-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_1-bitmapscan-off-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear\_1 / indexscan'

plot  "data/ryzen_nvme/linear\_1-indexscan-off-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_1-indexscan-off-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_1-indexscan-off-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_1-indexscan-off-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_1 / indexscan (prefetch)'

plot  "data/ryzen_nvme/linear\_1-indexscan-on-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_1-indexscan-on-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_1-indexscan-on-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_1-indexscan-on-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_1 / seqscan'

plot "data/ryzen_nvme/linear\_1-seqscan-off-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_1-seqscan-off-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_1-seqscan-off-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_1-seqscan-off-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_1 / smoothscan'

plot "data/ryzen_nvme/linear\_1-smoothscan-off-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_1-smoothscan-off-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_1-smoothscan-off-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_1-smoothscan-off-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.00099999920000064:100]
set yrange[0:8818.598]
set title 'linear / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/linear-bitmapscan-off-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear-bitmapscan-off-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear-bitmapscan-off-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear-bitmapscan-off-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear / indexscan'

plot  "data/ryzen_nvme/linear-indexscan-off-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear-indexscan-off-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear-indexscan-off-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear-indexscan-off-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear / indexscan (prefetch)'

plot  "data/ryzen_nvme/linear-indexscan-on-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear-indexscan-on-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear-indexscan-on-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear-indexscan-on-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear / seqscan'

plot "data/ryzen_nvme/linear-seqscan-off-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear-seqscan-off-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear-seqscan-off-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear-seqscan-off-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear / smoothscan'

plot "data/ryzen_nvme/linear-smoothscan-off-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear-smoothscan-off-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear-smoothscan-off-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear-smoothscan-off-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.000369999704000237:100]
set yrange[0:16716.868]
set title 'cyclic\_25 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/cyclic\_25-bitmapscan-off-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_25-bitmapscan-off-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_25-bitmapscan-off-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_25-bitmapscan-off-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic\_25 / indexscan'

plot  "data/ryzen_nvme/cyclic\_25-indexscan-off-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_25-indexscan-off-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_25-indexscan-off-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_25-indexscan-off-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_25 / indexscan (prefetch)'

plot  "data/ryzen_nvme/cyclic\_25-indexscan-on-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_25-indexscan-on-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_25-indexscan-on-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_25-indexscan-on-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_25 / seqscan'

plot "data/ryzen_nvme/cyclic\_25-seqscan-off-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_25-seqscan-off-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_25-seqscan-off-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_25-seqscan-off-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_25 / smoothscan'

plot "data/ryzen_nvme/cyclic\_25-smoothscan-off-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_25-smoothscan-off-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_25-smoothscan-off-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_25-smoothscan-off-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.000469999624000301:100]
set yrange[0:11991.474]
set title 'cyclic\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/cyclic\_10-bitmapscan-off-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_10-bitmapscan-off-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_10-bitmapscan-off-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_10-bitmapscan-off-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic\_10 / indexscan'

plot  "data/ryzen_nvme/cyclic\_10-indexscan-off-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_10-indexscan-off-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_10-indexscan-off-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_10-indexscan-off-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_10 / indexscan (prefetch)'

plot  "data/ryzen_nvme/cyclic\_10-indexscan-on-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_10-indexscan-on-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_10-indexscan-on-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_10-indexscan-on-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_10 / seqscan'

plot "data/ryzen_nvme/cyclic\_10-seqscan-off-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_10-seqscan-off-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_10-seqscan-off-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_10-seqscan-off-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_10 / smoothscan'

plot "data/ryzen_nvme/cyclic\_10-smoothscan-off-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_10-smoothscan-off-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_10-smoothscan-off-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_10-smoothscan-off-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.000579999536000371:100]
set yrange[0:9155.852]
set title 'cyclic\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/cyclic\_1-bitmapscan-off-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_1-bitmapscan-off-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_1-bitmapscan-off-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_1-bitmapscan-off-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic\_1 / indexscan'

plot  "data/ryzen_nvme/cyclic\_1-indexscan-off-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_1-indexscan-off-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_1-indexscan-off-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_1-indexscan-off-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_1 / indexscan (prefetch)'

plot  "data/ryzen_nvme/cyclic\_1-indexscan-on-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_1-indexscan-on-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_1-indexscan-on-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_1-indexscan-on-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_1 / seqscan'

plot "data/ryzen_nvme/cyclic\_1-seqscan-off-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_1-seqscan-off-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_1-seqscan-off-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_1-seqscan-off-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_1 / smoothscan'

plot "data/ryzen_nvme/cyclic\_1-smoothscan-off-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_1-smoothscan-off-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_1-smoothscan-off-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_1-smoothscan-off-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.00099999920000064:100]
set yrange[0:15744.598]
set title 'cyclic / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/cyclic-bitmapscan-off-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic-bitmapscan-off-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic-bitmapscan-off-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic-bitmapscan-off-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic / indexscan'

plot  "data/ryzen_nvme/cyclic-indexscan-off-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic-indexscan-off-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic-indexscan-off-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic-indexscan-off-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic / indexscan (prefetch)'

plot  "data/ryzen_nvme/cyclic-indexscan-on-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic-indexscan-on-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic-indexscan-on-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic-indexscan-on-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic / seqscan'

plot "data/ryzen_nvme/cyclic-seqscan-off-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic-seqscan-off-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic-seqscan-off-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic-seqscan-off-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic / smoothscan'

plot "data/ryzen_nvme/cyclic-smoothscan-off-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic-smoothscan-off-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic-smoothscan-off-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic-smoothscan-off-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
