set terminal pdfcairo size 16,40 enhanced font 'Verdana,12'
set output 'ryzen_sata-rows-cold-32GB-0-log.pdf'
#set output 'ryzen_sata-rows-cold-32GB-log.pdf'


set log x
set log y
set yrange [0.01:]
set key top left

set xlabel 'selectivity'

set multiplot layout 11,3 rowsfirst
set xrange[0.01:100]
set yrange[0.01:47151.904]
set title 'uniform / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/uniform-bitmapscan-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/uniform-bitmapscan-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/uniform-bitmapscan-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/uniform-bitmapscan-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'uniform / indexscan'

plot  "data/ryzen_sata/uniform-indexscan-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/uniform-indexscan-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/uniform-indexscan-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/uniform-indexscan-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'uniform / seqscan'

plot "data/ryzen_sata/uniform-seqscan-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/uniform-seqscan-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/uniform-seqscan-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/uniform-seqscan-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:44446.935]
set title 'linear\_500 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/linear\_500-bitmapscan-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_500-bitmapscan-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_500-bitmapscan-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_500-bitmapscan-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear\_500 / indexscan'

plot  "data/ryzen_sata/linear\_500-indexscan-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_500-indexscan-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_500-indexscan-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_500-indexscan-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_500 / seqscan'

plot "data/ryzen_sata/linear\_500-seqscan-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_500-seqscan-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_500-seqscan-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_500-seqscan-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:44820.641]
set title 'linear\_100 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/linear\_100-bitmapscan-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_100-bitmapscan-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_100-bitmapscan-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_100-bitmapscan-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear\_100 / indexscan'

plot  "data/ryzen_sata/linear\_100-indexscan-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_100-indexscan-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_100-indexscan-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_100-indexscan-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_100 / seqscan'

plot "data/ryzen_sata/linear\_100-seqscan-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_100-seqscan-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_100-seqscan-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_100-seqscan-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:35669.225]
set title 'linear\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/linear\_10-bitmapscan-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_10-bitmapscan-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_10-bitmapscan-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_10-bitmapscan-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear\_10 / indexscan'

plot  "data/ryzen_sata/linear\_10-indexscan-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_10-indexscan-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_10-indexscan-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_10-indexscan-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_10 / seqscan'

plot "data/ryzen_sata/linear\_10-seqscan-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_10-seqscan-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_10-seqscan-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_10-seqscan-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:10534.61]
set title 'linear\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/linear\_1-bitmapscan-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_1-bitmapscan-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_1-bitmapscan-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_1-bitmapscan-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear\_1 / indexscan'

plot  "data/ryzen_sata/linear\_1-indexscan-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_1-indexscan-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_1-indexscan-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_1-indexscan-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_1 / seqscan'

plot "data/ryzen_sata/linear\_1-seqscan-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_1-seqscan-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_1-seqscan-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_1-seqscan-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:2948.508]
set title 'linear / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/linear-bitmapscan-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear-bitmapscan-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear-bitmapscan-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear-bitmapscan-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear / indexscan'

plot  "data/ryzen_sata/linear-indexscan-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear-indexscan-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear-indexscan-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear-indexscan-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear / seqscan'

plot "data/ryzen_sata/linear-seqscan-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear-seqscan-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear-seqscan-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear-seqscan-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:42078.99]
set title 'cyclic\_500 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/cyclic\_500-bitmapscan-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_500-bitmapscan-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_500-bitmapscan-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_500-bitmapscan-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic\_500 / indexscan'

plot  "data/ryzen_sata/cyclic\_500-indexscan-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_500-indexscan-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_500-indexscan-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_500-indexscan-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_500 / seqscan'

plot "data/ryzen_sata/cyclic\_500-seqscan-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_500-seqscan-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_500-seqscan-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_500-seqscan-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:24597.849]
set title 'cyclic\_100 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/cyclic\_100-bitmapscan-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_100-bitmapscan-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_100-bitmapscan-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_100-bitmapscan-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic\_100 / indexscan'

plot  "data/ryzen_sata/cyclic\_100-indexscan-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_100-indexscan-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_100-indexscan-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_100-indexscan-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_100 / seqscan'

plot "data/ryzen_sata/cyclic\_100-seqscan-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_100-seqscan-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_100-seqscan-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_100-seqscan-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:6651.222]
set title 'cyclic\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/cyclic\_10-bitmapscan-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_10-bitmapscan-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_10-bitmapscan-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_10-bitmapscan-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic\_10 / indexscan'

plot  "data/ryzen_sata/cyclic\_10-indexscan-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_10-indexscan-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_10-indexscan-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_10-indexscan-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_10 / seqscan'

plot "data/ryzen_sata/cyclic\_10-seqscan-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_10-seqscan-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_10-seqscan-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_10-seqscan-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:4207.432]
set title 'cyclic\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/cyclic\_1-bitmapscan-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_1-bitmapscan-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_1-bitmapscan-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_1-bitmapscan-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic\_1 / indexscan'

plot  "data/ryzen_sata/cyclic\_1-indexscan-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_1-indexscan-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_1-indexscan-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_1-indexscan-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_1 / seqscan'

plot "data/ryzen_sata/cyclic\_1-seqscan-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_1-seqscan-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_1-seqscan-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_1-seqscan-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.01:100]
set yrange[0.01:3990.367]
set title 'cyclic / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/cyclic-bitmapscan-0-io_uring-3-32GB.data"  using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic-bitmapscan-0-sync-3-32GB.data"      using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic-bitmapscan-0-worker-3-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic-bitmapscan-0-worker-12-32GB.data"    using 1:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic / indexscan'

plot  "data/ryzen_sata/cyclic-indexscan-0-io_uring-3-32GB.data"   using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic-indexscan-0-sync-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic-indexscan-0-worker-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic-indexscan-0-worker-12-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic / seqscan'

plot "data/ryzen_sata/cyclic-seqscan-0-io_uring-3-32GB.data"     using 1:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic-seqscan-0-sync-3-32GB.data"         using 1:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic-seqscan-0-worker-3-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic-seqscan-0-worker-12-32GB.data"       using 1:3 with points pt 7 ps 0.75 title "worker (12)"
