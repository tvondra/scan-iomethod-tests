set terminal pdfcairo size 25,35 enhanced font 'Verdana,12'
set output 'ryzen_nvme-rows-warm-32GB-128.pdf'
#set output 'ryzen_nvme-rows-warm-scaled.pdf'


set log x
set yrange [0:]
set key top left

set xlabel 'selectivity'

set multiplot layout 9,5 rowsfirst
set xrange[0.000799999360000512:100]
set yrange[0:9146.415]
set title 'uniform / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/uniform-bitmapscan-off-128-io_uring-3-32GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/uniform-bitmapscan-off-128-sync-3-32GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/uniform-bitmapscan-off-128-worker-3-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/uniform-bitmapscan-off-128-worker-12-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/uniform-bitmapscan-17-off-128-sync-0-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "17"

unset ylabel

set title 'uniform / indexscan'

plot  "data/ryzen_nvme/uniform-indexscan-off-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/uniform-indexscan-off-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/uniform-indexscan-off-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/uniform-indexscan-off-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/uniform-indexscan-17-off-128-sync-0-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "17"

set title 'uniform / indexscan (prefetch)'

plot  "data/ryzen_nvme/uniform-indexscan-on-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/uniform-indexscan-on-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/uniform-indexscan-on-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/uniform-indexscan-on-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'uniform / seqscan'

plot "data/ryzen_nvme/uniform-seqscan-off-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/uniform-seqscan-off-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/uniform-seqscan-off-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/uniform-seqscan-off-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/uniform-seqscan-17-off-128-sync-0-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "17"

set title 'uniform / smoothscan'

plot "data/ryzen_nvme/uniform-smoothscan-off-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/uniform-smoothscan-off-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/uniform-smoothscan-off-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/uniform-smoothscan-off-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.000399999680000256:100]
set yrange[0:7312.395]
set title 'linear\_25 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/linear\_25-bitmapscan-off-128-io_uring-3-32GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_25-bitmapscan-off-128-sync-3-32GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_25-bitmapscan-off-128-worker-3-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_25-bitmapscan-off-128-worker-12-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/linear\_25-bitmapscan-17-off-128-sync-0-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "17"

unset ylabel

set title 'linear\_25 / indexscan'

plot  "data/ryzen_nvme/linear\_25-indexscan-off-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_25-indexscan-off-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_25-indexscan-off-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_25-indexscan-off-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/linear\_25-indexscan-17-off-128-sync-0-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "17"

set title 'linear\_25 / indexscan (prefetch)'

plot  "data/ryzen_nvme/linear\_25-indexscan-on-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_25-indexscan-on-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_25-indexscan-on-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_25-indexscan-on-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_25 / seqscan'

plot "data/ryzen_nvme/linear\_25-seqscan-off-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_25-seqscan-off-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_25-seqscan-off-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_25-seqscan-off-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/linear\_25-seqscan-17-off-128-sync-0-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "17"

set title 'linear\_25 / smoothscan'

plot "data/ryzen_nvme/linear\_25-smoothscan-off-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_25-smoothscan-off-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_25-smoothscan-off-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_25-smoothscan-off-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.000329999736000211:100]
set yrange[0:7778.669]
set title 'linear\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/linear\_10-bitmapscan-off-128-io_uring-3-32GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_10-bitmapscan-off-128-sync-3-32GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_10-bitmapscan-off-128-worker-3-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_10-bitmapscan-off-128-worker-12-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/linear\_10-bitmapscan-17-off-128-sync-0-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "17"

unset ylabel

set title 'linear\_10 / indexscan'

plot  "data/ryzen_nvme/linear\_10-indexscan-off-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_10-indexscan-off-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_10-indexscan-off-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_10-indexscan-off-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/linear\_10-indexscan-17-off-128-sync-0-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "17"

set title 'linear\_10 / indexscan (prefetch)'

plot  "data/ryzen_nvme/linear\_10-indexscan-on-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_10-indexscan-on-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_10-indexscan-on-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_10-indexscan-on-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_10 / seqscan'

plot "data/ryzen_nvme/linear\_10-seqscan-off-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_10-seqscan-off-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_10-seqscan-off-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_10-seqscan-off-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/linear\_10-seqscan-17-off-128-sync-0-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "17"

set title 'linear\_10 / smoothscan'

plot "data/ryzen_nvme/linear\_10-smoothscan-off-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_10-smoothscan-off-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_10-smoothscan-off-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_10-smoothscan-off-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.000579999536000371:100]
set yrange[0:7206.52]
set title 'linear\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/linear\_1-bitmapscan-off-128-io_uring-3-32GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_1-bitmapscan-off-128-sync-3-32GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_1-bitmapscan-off-128-worker-3-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_1-bitmapscan-off-128-worker-12-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/linear\_1-bitmapscan-17-off-128-sync-0-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "17"

unset ylabel

set title 'linear\_1 / indexscan'

plot  "data/ryzen_nvme/linear\_1-indexscan-off-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_1-indexscan-off-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_1-indexscan-off-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_1-indexscan-off-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/linear\_1-indexscan-17-off-128-sync-0-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "17"

set title 'linear\_1 / indexscan (prefetch)'

plot  "data/ryzen_nvme/linear\_1-indexscan-on-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_1-indexscan-on-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_1-indexscan-on-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_1-indexscan-on-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_1 / seqscan'

plot "data/ryzen_nvme/linear\_1-seqscan-off-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_1-seqscan-off-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_1-seqscan-off-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_1-seqscan-off-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/linear\_1-seqscan-17-off-128-sync-0-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "17"

set title 'linear\_1 / smoothscan'

plot "data/ryzen_nvme/linear\_1-smoothscan-off-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear\_1-smoothscan-off-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear\_1-smoothscan-off-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear\_1-smoothscan-off-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.00099999920000064:100]
set yrange[0:5845.053]
set title 'linear / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/linear-bitmapscan-off-128-io_uring-3-32GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear-bitmapscan-off-128-sync-3-32GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear-bitmapscan-off-128-worker-3-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear-bitmapscan-off-128-worker-12-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/linear-bitmapscan-17-off-128-sync-0-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "17"

unset ylabel

set title 'linear / indexscan'

plot  "data/ryzen_nvme/linear-indexscan-off-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear-indexscan-off-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear-indexscan-off-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear-indexscan-off-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/linear-indexscan-17-off-128-sync-0-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "17"

set title 'linear / indexscan (prefetch)'

plot  "data/ryzen_nvme/linear-indexscan-on-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear-indexscan-on-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear-indexscan-on-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear-indexscan-on-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear / seqscan'

plot "data/ryzen_nvme/linear-seqscan-off-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear-seqscan-off-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear-seqscan-off-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear-seqscan-off-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/linear-seqscan-17-off-128-sync-0-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "17"

set title 'linear / smoothscan'

plot "data/ryzen_nvme/linear-smoothscan-off-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/linear-smoothscan-off-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/linear-smoothscan-off-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/linear-smoothscan-off-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.000369999704000237:100]
set yrange[0:7446.533]
set title 'cyclic\_25 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/cyclic\_25-bitmapscan-off-128-io_uring-3-32GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_25-bitmapscan-off-128-sync-3-32GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_25-bitmapscan-off-128-worker-3-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_25-bitmapscan-off-128-worker-12-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/cyclic\_25-bitmapscan-17-off-128-sync-0-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "17"

unset ylabel

set title 'cyclic\_25 / indexscan'

plot  "data/ryzen_nvme/cyclic\_25-indexscan-off-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_25-indexscan-off-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_25-indexscan-off-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_25-indexscan-off-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/cyclic\_25-indexscan-17-off-128-sync-0-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "17"

set title 'cyclic\_25 / indexscan (prefetch)'

plot  "data/ryzen_nvme/cyclic\_25-indexscan-on-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_25-indexscan-on-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_25-indexscan-on-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_25-indexscan-on-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_25 / seqscan'

plot "data/ryzen_nvme/cyclic\_25-seqscan-off-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_25-seqscan-off-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_25-seqscan-off-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_25-seqscan-off-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/cyclic\_25-seqscan-17-off-128-sync-0-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "17"

set title 'cyclic\_25 / smoothscan'

plot "data/ryzen_nvme/cyclic\_25-smoothscan-off-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_25-smoothscan-off-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_25-smoothscan-off-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_25-smoothscan-off-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.000469999624000301:100]
set yrange[0:7713.962]
set title 'cyclic\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/cyclic\_10-bitmapscan-off-128-io_uring-3-32GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_10-bitmapscan-off-128-sync-3-32GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_10-bitmapscan-off-128-worker-3-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_10-bitmapscan-off-128-worker-12-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/cyclic\_10-bitmapscan-17-off-128-sync-0-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "17"

unset ylabel

set title 'cyclic\_10 / indexscan'

plot  "data/ryzen_nvme/cyclic\_10-indexscan-off-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_10-indexscan-off-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_10-indexscan-off-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_10-indexscan-off-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/cyclic\_10-indexscan-17-off-128-sync-0-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "17"

set title 'cyclic\_10 / indexscan (prefetch)'

plot  "data/ryzen_nvme/cyclic\_10-indexscan-on-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_10-indexscan-on-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_10-indexscan-on-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_10-indexscan-on-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_10 / seqscan'

plot "data/ryzen_nvme/cyclic\_10-seqscan-off-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_10-seqscan-off-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_10-seqscan-off-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_10-seqscan-off-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/cyclic\_10-seqscan-17-off-128-sync-0-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "17"

set title 'cyclic\_10 / smoothscan'

plot "data/ryzen_nvme/cyclic\_10-smoothscan-off-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_10-smoothscan-off-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_10-smoothscan-off-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_10-smoothscan-off-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.000579999536000371:100]
set yrange[0:7170.874]
set title 'cyclic\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/cyclic\_1-bitmapscan-off-128-io_uring-3-32GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_1-bitmapscan-off-128-sync-3-32GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_1-bitmapscan-off-128-worker-3-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_1-bitmapscan-off-128-worker-12-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/cyclic\_1-bitmapscan-17-off-128-sync-0-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "17"

unset ylabel

set title 'cyclic\_1 / indexscan'

plot  "data/ryzen_nvme/cyclic\_1-indexscan-off-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_1-indexscan-off-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_1-indexscan-off-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_1-indexscan-off-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/cyclic\_1-indexscan-17-off-128-sync-0-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "17"

set title 'cyclic\_1 / indexscan (prefetch)'

plot  "data/ryzen_nvme/cyclic\_1-indexscan-on-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_1-indexscan-on-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_1-indexscan-on-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_1-indexscan-on-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_1 / seqscan'

plot "data/ryzen_nvme/cyclic\_1-seqscan-off-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_1-seqscan-off-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_1-seqscan-off-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_1-seqscan-off-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/cyclic\_1-seqscan-17-off-128-sync-0-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "17"

set title 'cyclic\_1 / smoothscan'

plot "data/ryzen_nvme/cyclic\_1-smoothscan-off-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic\_1-smoothscan-off-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic\_1-smoothscan-off-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic\_1-smoothscan-off-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.00099999920000064:100]
set yrange[0:6011.765]
set title 'cyclic / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_nvme/cyclic-bitmapscan-off-128-io_uring-3-32GB.data"  using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic-bitmapscan-off-128-sync-3-32GB.data"      using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic-bitmapscan-off-128-worker-3-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic-bitmapscan-off-128-worker-12-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/cyclic-bitmapscan-17-off-128-sync-0-32GB.data"    using 1:4 with points pt 7 ps 0.75 title "17"

unset ylabel

set title 'cyclic / indexscan'

plot  "data/ryzen_nvme/cyclic-indexscan-off-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic-indexscan-off-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic-indexscan-off-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic-indexscan-off-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/cyclic-indexscan-17-off-128-sync-0-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "17"

set title 'cyclic / indexscan (prefetch)'

plot  "data/ryzen_nvme/cyclic-indexscan-on-128-io_uring-3-32GB.data"   using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic-indexscan-on-128-sync-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic-indexscan-on-128-worker-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic-indexscan-on-128-worker-12-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic / seqscan'

plot "data/ryzen_nvme/cyclic-seqscan-off-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic-seqscan-off-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic-seqscan-off-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic-seqscan-off-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_nvme/cyclic-seqscan-17-off-128-sync-0-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "17"

set title 'cyclic / smoothscan'

plot "data/ryzen_nvme/cyclic-smoothscan-off-128-io_uring-3-32GB.data"     using 1:4 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_nvme/cyclic-smoothscan-off-128-sync-3-32GB.data"         using 1:4 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_nvme/cyclic-smoothscan-off-128-worker-3-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_nvme/cyclic-smoothscan-off-128-worker-12-32GB.data"       using 1:4 with points pt 7 ps 0.75 title "worker (12)"
