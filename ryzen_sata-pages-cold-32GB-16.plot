set terminal pdfcairo size 16,40 enhanced font 'Verdana,12'
set output 'ryzen_sata-pages-cold-32GB-16.pdf'
#set output 'ryzen_sata-pages-cold-scaled.pdf'


set log x
set yrange [0:]
set key top left

set xlabel 'selectivity'

set multiplot layout 11,3 rowsfirst
set xrange[0.1:100]
set yrange[0:47151.904]
set title 'uniform / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/uniform-bitmapscan-16-io_uring-3-32GB.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/uniform-bitmapscan-16-sync-3-32GB.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/uniform-bitmapscan-16-worker-3-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/uniform-bitmapscan-16-worker-12-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'uniform / indexscan'

plot  "data/ryzen_sata/uniform-indexscan-16-io_uring-3-32GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/uniform-indexscan-16-sync-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/uniform-indexscan-16-worker-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/uniform-indexscan-16-worker-12-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'uniform / seqscan'

plot "data/ryzen_sata/uniform-seqscan-16-io_uring-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/uniform-seqscan-16-sync-3-32GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/uniform-seqscan-16-worker-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/uniform-seqscan-16-worker-12-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.1:100]
set yrange[0:44446.935]
set title 'linear\_500 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/linear\_500-bitmapscan-16-io_uring-3-32GB.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_500-bitmapscan-16-sync-3-32GB.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_500-bitmapscan-16-worker-3-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_500-bitmapscan-16-worker-12-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear\_500 / indexscan'

plot  "data/ryzen_sata/linear\_500-indexscan-16-io_uring-3-32GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_500-indexscan-16-sync-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_500-indexscan-16-worker-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_500-indexscan-16-worker-12-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_500 / seqscan'

plot "data/ryzen_sata/linear\_500-seqscan-16-io_uring-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_500-seqscan-16-sync-3-32GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_500-seqscan-16-worker-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_500-seqscan-16-worker-12-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.1:100]
set yrange[0:44820.641]
set title 'linear\_100 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/linear\_100-bitmapscan-16-io_uring-3-32GB.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_100-bitmapscan-16-sync-3-32GB.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_100-bitmapscan-16-worker-3-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_100-bitmapscan-16-worker-12-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear\_100 / indexscan'

plot  "data/ryzen_sata/linear\_100-indexscan-16-io_uring-3-32GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_100-indexscan-16-sync-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_100-indexscan-16-worker-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_100-indexscan-16-worker-12-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_100 / seqscan'

plot "data/ryzen_sata/linear\_100-seqscan-16-io_uring-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_100-seqscan-16-sync-3-32GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_100-seqscan-16-worker-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_100-seqscan-16-worker-12-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.1:100]
set yrange[0:35669.225]
set title 'linear\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/linear\_10-bitmapscan-16-io_uring-3-32GB.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_10-bitmapscan-16-sync-3-32GB.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_10-bitmapscan-16-worker-3-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_10-bitmapscan-16-worker-12-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear\_10 / indexscan'

plot  "data/ryzen_sata/linear\_10-indexscan-16-io_uring-3-32GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_10-indexscan-16-sync-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_10-indexscan-16-worker-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_10-indexscan-16-worker-12-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_10 / seqscan'

plot "data/ryzen_sata/linear\_10-seqscan-16-io_uring-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_10-seqscan-16-sync-3-32GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_10-seqscan-16-worker-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_10-seqscan-16-worker-12-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.1:100]
set yrange[0:10534.61]
set title 'linear\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/linear\_1-bitmapscan-16-io_uring-3-32GB.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_1-bitmapscan-16-sync-3-32GB.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_1-bitmapscan-16-worker-3-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_1-bitmapscan-16-worker-12-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear\_1 / indexscan'

plot  "data/ryzen_sata/linear\_1-indexscan-16-io_uring-3-32GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_1-indexscan-16-sync-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_1-indexscan-16-worker-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_1-indexscan-16-worker-12-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear\_1 / seqscan'

plot "data/ryzen_sata/linear\_1-seqscan-16-io_uring-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear\_1-seqscan-16-sync-3-32GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear\_1-seqscan-16-worker-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear\_1-seqscan-16-worker-12-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.1:100]
set yrange[0:2948.508]
set title 'linear / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/linear-bitmapscan-16-io_uring-3-32GB.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear-bitmapscan-16-sync-3-32GB.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear-bitmapscan-16-worker-3-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear-bitmapscan-16-worker-12-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'linear / indexscan'

plot  "data/ryzen_sata/linear-indexscan-16-io_uring-3-32GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear-indexscan-16-sync-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear-indexscan-16-worker-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear-indexscan-16-worker-12-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'linear / seqscan'

plot "data/ryzen_sata/linear-seqscan-16-io_uring-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/linear-seqscan-16-sync-3-32GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/linear-seqscan-16-worker-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/linear-seqscan-16-worker-12-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.1:100]
set yrange[0:42078.99]
set title 'cyclic\_500 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/cyclic\_500-bitmapscan-16-io_uring-3-32GB.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_500-bitmapscan-16-sync-3-32GB.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_500-bitmapscan-16-worker-3-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_500-bitmapscan-16-worker-12-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic\_500 / indexscan'

plot  "data/ryzen_sata/cyclic\_500-indexscan-16-io_uring-3-32GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_500-indexscan-16-sync-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_500-indexscan-16-worker-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_500-indexscan-16-worker-12-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_500 / seqscan'

plot "data/ryzen_sata/cyclic\_500-seqscan-16-io_uring-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_500-seqscan-16-sync-3-32GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_500-seqscan-16-worker-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_500-seqscan-16-worker-12-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.1:100]
set yrange[0:24597.849]
set title 'cyclic\_100 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/cyclic\_100-bitmapscan-16-io_uring-3-32GB.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_100-bitmapscan-16-sync-3-32GB.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_100-bitmapscan-16-worker-3-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_100-bitmapscan-16-worker-12-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic\_100 / indexscan'

plot  "data/ryzen_sata/cyclic\_100-indexscan-16-io_uring-3-32GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_100-indexscan-16-sync-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_100-indexscan-16-worker-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_100-indexscan-16-worker-12-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_100 / seqscan'

plot "data/ryzen_sata/cyclic\_100-seqscan-16-io_uring-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_100-seqscan-16-sync-3-32GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_100-seqscan-16-worker-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_100-seqscan-16-worker-12-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.1:100]
set yrange[0:6651.222]
set title 'cyclic\_10 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/cyclic\_10-bitmapscan-16-io_uring-3-32GB.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_10-bitmapscan-16-sync-3-32GB.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_10-bitmapscan-16-worker-3-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_10-bitmapscan-16-worker-12-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic\_10 / indexscan'

plot  "data/ryzen_sata/cyclic\_10-indexscan-16-io_uring-3-32GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_10-indexscan-16-sync-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_10-indexscan-16-worker-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_10-indexscan-16-worker-12-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_10 / seqscan'

plot "data/ryzen_sata/cyclic\_10-seqscan-16-io_uring-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_10-seqscan-16-sync-3-32GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_10-seqscan-16-worker-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_10-seqscan-16-worker-12-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.1:100]
set yrange[0:4207.432]
set title 'cyclic\_1 / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/cyclic\_1-bitmapscan-16-io_uring-3-32GB.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_1-bitmapscan-16-sync-3-32GB.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_1-bitmapscan-16-worker-3-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_1-bitmapscan-16-worker-12-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic\_1 / indexscan'

plot  "data/ryzen_sata/cyclic\_1-indexscan-16-io_uring-3-32GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_1-indexscan-16-sync-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_1-indexscan-16-worker-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_1-indexscan-16-worker-12-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic\_1 / seqscan'

plot "data/ryzen_sata/cyclic\_1-seqscan-16-io_uring-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic\_1-seqscan-16-sync-3-32GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic\_1-seqscan-16-worker-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic\_1-seqscan-16-worker-12-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"
set xrange[0.1:100]
set yrange[0:3990.367]
set title 'cyclic / bitmapscan' font 'Verdana Bold,12'

set ylabel 'duration'

plot "data/ryzen_sata/cyclic-bitmapscan-16-io_uring-3-32GB.data"  using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic-bitmapscan-16-sync-3-32GB.data"      using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic-bitmapscan-16-worker-3-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic-bitmapscan-16-worker-12-32GB.data"    using 2:3 with points pt 7 ps 0.75 title "worker (12)"

unset ylabel

set title 'cyclic / indexscan'

plot  "data/ryzen_sata/cyclic-indexscan-16-io_uring-3-32GB.data"   using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic-indexscan-16-sync-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic-indexscan-16-worker-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic-indexscan-16-worker-12-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "worker (12)"

set title 'cyclic / seqscan'

plot "data/ryzen_sata/cyclic-seqscan-16-io_uring-3-32GB.data"     using 2:3 with points pt 7 ps 0.75 title "io\\\_uring", \
     "data/ryzen_sata/cyclic-seqscan-16-sync-3-32GB.data"         using 2:3 with points pt 7 ps 0.75 title "sync", \
     "data/ryzen_sata/cyclic-seqscan-16-worker-3-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker", \
     "data/ryzen_sata/cyclic-seqscan-16-worker-12-32GB.data"       using 2:3 with points pt 7 ps 0.75 title "worker (12)"
