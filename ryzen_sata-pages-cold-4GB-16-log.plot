set terminal pdfcairo size 25,35 enhanced font 'Verdana,12'
set output 'ryzen_sata-pages-cold-4GB-16-log.pdf'
#set output 'ryzen_sata-pages-cold-4GB-log.pdf'


set log x
set log y
set yrange [0.01:]
set key bottom right

set xlabel 'selectivity'

set multiplot layout 9,5 rowsfirst
set xrange[0.0133199893440085:100]
set yrange[0.01:47233.343]
set title 'uniform / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/uniform-bitmapscan-off-16-io_uring-3-4GB.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/uniform-bitmapscan-off-16-sync-3-4GB.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/uniform-bitmapscan-off-16-worker-3-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/uniform-bitmapscan-off-16-worker-12-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_sata/uniform-bitmapscan-17-off-16-sync-0-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "17"

unset ylabel

set title 'uniform / indexscan'

plot  "data/ryzen_sata/uniform-indexscan-off-16-io_uring-3-4GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/uniform-indexscan-off-16-sync-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/uniform-indexscan-off-16-worker-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/uniform-indexscan-off-16-worker-12-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_sata/uniform-indexscan-17-off-16-sync-0-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "17"

set title 'uniform / indexscan (prefetch)'

plot  "data/ryzen_sata/uniform-indexscan-on-16-io_uring-3-4GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/uniform-indexscan-on-16-sync-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/uniform-indexscan-on-16-worker-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/uniform-indexscan-on-16-worker-12-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'uniform / seqscan'

plot "data/ryzen_sata/uniform-seqscan-off-16-io_uring-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/uniform-seqscan-off-16-sync-3-4GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/uniform-seqscan-off-16-worker-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/uniform-seqscan-off-16-worker-12-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_sata/uniform-seqscan-17-off-16-sync-0-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "17"

set title 'uniform / smoothscan'

plot "data/ryzen_sata/uniform-smoothscan-off-16-io_uring-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/uniform-smoothscan-off-16-sync-3-4GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/uniform-smoothscan-off-16-worker-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/uniform-smoothscan-off-16-worker-12-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.0059399952480038:100]
set yrange[0.01:45124.443]
set title 'linear\_25 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/linear\_25-bitmapscan-off-16-io_uring-3-4GB.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_25-bitmapscan-off-16-sync-3-4GB.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_25-bitmapscan-off-16-worker-3-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_25-bitmapscan-off-16-worker-12-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_sata/linear\_25-bitmapscan-17-off-16-sync-0-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "17"

unset ylabel

set title 'linear\_25 / indexscan'

plot  "data/ryzen_sata/linear\_25-indexscan-off-16-io_uring-3-4GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_25-indexscan-off-16-sync-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_25-indexscan-off-16-worker-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_25-indexscan-off-16-worker-12-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_sata/linear\_25-indexscan-17-off-16-sync-0-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "17"

set title 'linear\_25 / indexscan (prefetch)'

plot  "data/ryzen_sata/linear\_25-indexscan-on-16-io_uring-3-4GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_25-indexscan-on-16-sync-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_25-indexscan-on-16-worker-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_25-indexscan-on-16-worker-12-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_25 / seqscan'

plot "data/ryzen_sata/linear\_25-seqscan-off-16-io_uring-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_25-seqscan-off-16-sync-3-4GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_25-seqscan-off-16-worker-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_25-seqscan-off-16-worker-12-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_sata/linear\_25-seqscan-17-off-16-sync-0-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "17"

set title 'linear\_25 / smoothscan'

plot "data/ryzen_sata/linear\_25-smoothscan-off-16-io_uring-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_25-smoothscan-off-16-sync-3-4GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_25-smoothscan-off-16-worker-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_25-smoothscan-off-16-worker-12-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.00791999366400507:100]
set yrange[0.01:50266.949]
set title 'linear\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/linear\_10-bitmapscan-off-16-io_uring-3-4GB.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_10-bitmapscan-off-16-sync-3-4GB.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_10-bitmapscan-off-16-worker-3-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_10-bitmapscan-off-16-worker-12-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_sata/linear\_10-bitmapscan-17-off-16-sync-0-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "17"

unset ylabel

set title 'linear\_10 / indexscan'

plot  "data/ryzen_sata/linear\_10-indexscan-off-16-io_uring-3-4GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_10-indexscan-off-16-sync-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_10-indexscan-off-16-worker-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_10-indexscan-off-16-worker-12-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_sata/linear\_10-indexscan-17-off-16-sync-0-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "17"

set title 'linear\_10 / indexscan (prefetch)'

plot  "data/ryzen_sata/linear\_10-indexscan-on-16-io_uring-3-4GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_10-indexscan-on-16-sync-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_10-indexscan-on-16-worker-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_10-indexscan-on-16-worker-12-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_10 / seqscan'

plot "data/ryzen_sata/linear\_10-seqscan-off-16-io_uring-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_10-seqscan-off-16-sync-3-4GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_10-seqscan-off-16-worker-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_10-seqscan-off-16-worker-12-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_sata/linear\_10-seqscan-17-off-16-sync-0-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "17"

set title 'linear\_10 / smoothscan'

plot "data/ryzen_sata/linear\_10-smoothscan-off-16-io_uring-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_10-smoothscan-off-16-sync-3-4GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_10-smoothscan-off-16-worker-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_10-smoothscan-off-16-worker-12-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.0100799919360065:100]
set yrange[0.01:53168.309]
set title 'linear\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/linear\_1-bitmapscan-off-16-io_uring-3-4GB.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_1-bitmapscan-off-16-sync-3-4GB.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_1-bitmapscan-off-16-worker-3-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_1-bitmapscan-off-16-worker-12-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_sata/linear\_1-bitmapscan-17-off-16-sync-0-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "17"

unset ylabel

set title 'linear\_1 / indexscan'

plot  "data/ryzen_sata/linear\_1-indexscan-off-16-io_uring-3-4GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_1-indexscan-off-16-sync-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_1-indexscan-off-16-worker-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_1-indexscan-off-16-worker-12-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_sata/linear\_1-indexscan-17-off-16-sync-0-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "17"

set title 'linear\_1 / indexscan (prefetch)'

plot  "data/ryzen_sata/linear\_1-indexscan-on-16-io_uring-3-4GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_1-indexscan-on-16-sync-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_1-indexscan-on-16-worker-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_1-indexscan-on-16-worker-12-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_1 / seqscan'

plot "data/ryzen_sata/linear\_1-seqscan-off-16-io_uring-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_1-seqscan-off-16-sync-3-4GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_1-seqscan-off-16-worker-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_1-seqscan-off-16-worker-12-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_sata/linear\_1-seqscan-17-off-16-sync-0-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "17"

set title 'linear\_1 / smoothscan'

plot "data/ryzen_sata/linear\_1-smoothscan-off-16-io_uring-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_1-smoothscan-off-16-sync-3-4GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_1-smoothscan-off-16-worker-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_1-smoothscan-off-16-worker-12-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.00107999913600069:100]
set yrange[0.01:22223.929]
set title 'linear / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/linear-bitmapscan-off-16-io_uring-3-4GB.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear-bitmapscan-off-16-sync-3-4GB.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear-bitmapscan-off-16-worker-3-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear-bitmapscan-off-16-worker-12-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_sata/linear-bitmapscan-17-off-16-sync-0-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "17"

unset ylabel

set title 'linear / indexscan'

plot  "data/ryzen_sata/linear-indexscan-off-16-io_uring-3-4GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear-indexscan-off-16-sync-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear-indexscan-off-16-worker-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear-indexscan-off-16-worker-12-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_sata/linear-indexscan-17-off-16-sync-0-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "17"

set title 'linear / indexscan (prefetch)'

plot  "data/ryzen_sata/linear-indexscan-on-16-io_uring-3-4GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear-indexscan-on-16-sync-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear-indexscan-on-16-worker-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear-indexscan-on-16-worker-12-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear / seqscan'

plot "data/ryzen_sata/linear-seqscan-off-16-io_uring-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear-seqscan-off-16-sync-3-4GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear-seqscan-off-16-worker-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear-seqscan-off-16-worker-12-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_sata/linear-seqscan-17-off-16-sync-0-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "17"

set title 'linear / smoothscan'

plot "data/ryzen_sata/linear-smoothscan-off-16-io_uring-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear-smoothscan-off-16-sync-3-4GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear-smoothscan-off-16-worker-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear-smoothscan-off-16-worker-12-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.00701999438400449:100]
set yrange[0.01:37944.569]
set title 'cyclic\_25 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/cyclic\_25-bitmapscan-off-16-io_uring-3-4GB.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_25-bitmapscan-off-16-sync-3-4GB.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_25-bitmapscan-off-16-worker-3-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_25-bitmapscan-off-16-worker-12-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_sata/cyclic\_25-bitmapscan-17-off-16-sync-0-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "17"

unset ylabel

set title 'cyclic\_25 / indexscan'

plot  "data/ryzen_sata/cyclic\_25-indexscan-off-16-io_uring-3-4GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_25-indexscan-off-16-sync-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_25-indexscan-off-16-worker-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_25-indexscan-off-16-worker-12-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_sata/cyclic\_25-indexscan-17-off-16-sync-0-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "17"

set title 'cyclic\_25 / indexscan (prefetch)'

plot  "data/ryzen_sata/cyclic\_25-indexscan-on-16-io_uring-3-4GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_25-indexscan-on-16-sync-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_25-indexscan-on-16-worker-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_25-indexscan-on-16-worker-12-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_25 / seqscan'

plot "data/ryzen_sata/cyclic\_25-seqscan-off-16-io_uring-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_25-seqscan-off-16-sync-3-4GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_25-seqscan-off-16-worker-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_25-seqscan-off-16-worker-12-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_sata/cyclic\_25-seqscan-17-off-16-sync-0-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "17"

set title 'cyclic\_25 / smoothscan'

plot "data/ryzen_sata/cyclic\_25-smoothscan-off-16-io_uring-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_25-smoothscan-off-16-sync-3-4GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_25-smoothscan-off-16-worker-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_25-smoothscan-off-16-worker-12-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.00737999409600472:100]
set yrange[0.01:24722.322]
set title 'cyclic\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/cyclic\_10-bitmapscan-off-16-io_uring-3-4GB.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_10-bitmapscan-off-16-sync-3-4GB.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_10-bitmapscan-off-16-worker-3-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_10-bitmapscan-off-16-worker-12-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_sata/cyclic\_10-bitmapscan-17-off-16-sync-0-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "17"

unset ylabel

set title 'cyclic\_10 / indexscan'

plot  "data/ryzen_sata/cyclic\_10-indexscan-off-16-io_uring-3-4GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_10-indexscan-off-16-sync-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_10-indexscan-off-16-worker-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_10-indexscan-off-16-worker-12-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_sata/cyclic\_10-indexscan-17-off-16-sync-0-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "17"

set title 'cyclic\_10 / indexscan (prefetch)'

plot  "data/ryzen_sata/cyclic\_10-indexscan-on-16-io_uring-3-4GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_10-indexscan-on-16-sync-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_10-indexscan-on-16-worker-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_10-indexscan-on-16-worker-12-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_10 / seqscan'

plot "data/ryzen_sata/cyclic\_10-seqscan-off-16-io_uring-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_10-seqscan-off-16-sync-3-4GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_10-seqscan-off-16-worker-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_10-seqscan-off-16-worker-12-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_sata/cyclic\_10-seqscan-17-off-16-sync-0-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "17"

set title 'cyclic\_10 / smoothscan'

plot "data/ryzen_sata/cyclic\_10-smoothscan-off-16-io_uring-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_10-smoothscan-off-16-sync-3-4GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_10-smoothscan-off-16-worker-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_10-smoothscan-off-16-worker-12-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.00845999323200541:100]
set yrange[0.01:11364.25]
set title 'cyclic\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/cyclic\_1-bitmapscan-off-16-io_uring-3-4GB.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_1-bitmapscan-off-16-sync-3-4GB.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_1-bitmapscan-off-16-worker-3-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_1-bitmapscan-off-16-worker-12-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_sata/cyclic\_1-bitmapscan-17-off-16-sync-0-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "17"

unset ylabel

set title 'cyclic\_1 / indexscan'

plot  "data/ryzen_sata/cyclic\_1-indexscan-off-16-io_uring-3-4GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_1-indexscan-off-16-sync-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_1-indexscan-off-16-worker-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_1-indexscan-off-16-worker-12-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_sata/cyclic\_1-indexscan-17-off-16-sync-0-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "17"

set title 'cyclic\_1 / indexscan (prefetch)'

plot  "data/ryzen_sata/cyclic\_1-indexscan-on-16-io_uring-3-4GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_1-indexscan-on-16-sync-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_1-indexscan-on-16-worker-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_1-indexscan-on-16-worker-12-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_1 / seqscan'

plot "data/ryzen_sata/cyclic\_1-seqscan-off-16-io_uring-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_1-seqscan-off-16-sync-3-4GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_1-seqscan-off-16-worker-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_1-seqscan-off-16-worker-12-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_sata/cyclic\_1-seqscan-17-off-16-sync-0-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "17"

set title 'cyclic\_1 / smoothscan'

plot "data/ryzen_sata/cyclic\_1-smoothscan-off-16-io_uring-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_1-smoothscan-off-16-sync-3-4GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_1-smoothscan-off-16-worker-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_1-smoothscan-off-16-worker-12-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.0179999856000115:100]
set yrange[0.01:37159.106]
set title 'cyclic / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/cyclic-bitmapscan-off-16-io_uring-3-4GB.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic-bitmapscan-off-16-sync-3-4GB.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic-bitmapscan-off-16-worker-3-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic-bitmapscan-off-16-worker-12-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_sata/cyclic-bitmapscan-17-off-16-sync-0-4GB.data"    using 2:3 with points pt 7 ps 0.75 title "17"

unset ylabel

set title 'cyclic / indexscan'

plot  "data/ryzen_sata/cyclic-indexscan-off-16-io_uring-3-4GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic-indexscan-off-16-sync-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic-indexscan-off-16-worker-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic-indexscan-off-16-worker-12-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_sata/cyclic-indexscan-17-off-16-sync-0-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "17"

set title 'cyclic / indexscan (prefetch)'

plot  "data/ryzen_sata/cyclic-indexscan-on-16-io_uring-3-4GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic-indexscan-on-16-sync-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic-indexscan-on-16-worker-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic-indexscan-on-16-worker-12-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic / seqscan'

plot "data/ryzen_sata/cyclic-seqscan-off-16-io_uring-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic-seqscan-off-16-sync-3-4GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic-seqscan-off-16-worker-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic-seqscan-off-16-worker-12-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)", \
     "data/ryzen_sata/cyclic-seqscan-17-off-16-sync-0-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "17"

set title 'cyclic / smoothscan'

plot "data/ryzen_sata/cyclic-smoothscan-off-16-io_uring-3-4GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic-smoothscan-off-16-sync-3-4GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic-smoothscan-off-16-worker-3-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic-smoothscan-off-16-worker-12-4GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"
