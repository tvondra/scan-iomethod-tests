set terminal pdfcairo size 16,40 enhanced font 'Verdana,12'
set output 'ryzen_sata-rows-cold-32GB-optimal-log.pdf'

set log x
set log y
set yrange [0.01:]
set key top left

set xlabel 'selectivity'

set multiplot layout 11,3 rowsfirst
set xrange[0.01:100]
set yrange[0.01:47151.904]
set title 'uniform / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/uniform-indexscan-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/uniform-bitmapscan-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/uniform-seqscan-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/uniform-indexscan-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/uniform-bitmapscan-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/uniform-seqscan-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0.01:47151.904]
set title 'uniform / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/uniform-indexscan-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/uniform-bitmapscan-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/uniform-seqscan-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/uniform-indexscan-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/uniform-bitmapscan-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/uniform-seqscan-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0.01:47151.904]
set title 'uniform / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/uniform-indexscan-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/uniform-bitmapscan-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/uniform-seqscan-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/uniform-indexscan-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/uniform-bitmapscan-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/uniform-seqscan-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0.01:44446.935]
set title 'linear\_500 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear_500-indexscan-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear_500-bitmapscan-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/linear_500-seqscan-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/linear_500-indexscan-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear_500-bitmapscan-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear_500-seqscan-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0.01:44446.935]
set title 'linear\_500 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear_500-indexscan-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear_500-bitmapscan-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/linear_500-seqscan-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/linear_500-indexscan-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear_500-bitmapscan-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear_500-seqscan-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0.01:44446.935]
set title 'linear\_500 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear_500-indexscan-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear_500-bitmapscan-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/linear_500-seqscan-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/linear_500-indexscan-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear_500-bitmapscan-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear_500-seqscan-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0.01:44820.641]
set title 'linear\_100 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear_100-indexscan-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear_100-bitmapscan-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/linear_100-seqscan-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/linear_100-indexscan-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear_100-bitmapscan-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear_100-seqscan-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0.01:44820.641]
set title 'linear\_100 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear_100-indexscan-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear_100-bitmapscan-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/linear_100-seqscan-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/linear_100-indexscan-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear_100-bitmapscan-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear_100-seqscan-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0.01:44820.641]
set title 'linear\_100 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear_100-indexscan-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear_100-bitmapscan-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/linear_100-seqscan-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/linear_100-indexscan-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear_100-bitmapscan-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear_100-seqscan-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0.01:35669.225]
set title 'linear\_10 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear_10-indexscan-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear_10-bitmapscan-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/linear_10-seqscan-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/linear_10-indexscan-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear_10-bitmapscan-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear_10-seqscan-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0.01:35669.225]
set title 'linear\_10 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear_10-indexscan-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear_10-bitmapscan-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/linear_10-seqscan-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/linear_10-indexscan-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear_10-bitmapscan-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear_10-seqscan-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0.01:35669.225]
set title 'linear\_10 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear_10-indexscan-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear_10-bitmapscan-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/linear_10-seqscan-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/linear_10-indexscan-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear_10-bitmapscan-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear_10-seqscan-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0.01:10534.61]
set title 'linear\_1 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear_1-indexscan-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear_1-bitmapscan-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/linear_1-seqscan-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/linear_1-indexscan-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear_1-bitmapscan-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear_1-seqscan-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0.01:10534.61]
set title 'linear\_1 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear_1-indexscan-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear_1-bitmapscan-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/linear_1-seqscan-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/linear_1-indexscan-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear_1-bitmapscan-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear_1-seqscan-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0.01:10534.61]
set title 'linear\_1 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear_1-indexscan-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear_1-bitmapscan-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/linear_1-seqscan-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/linear_1-indexscan-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear_1-bitmapscan-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear_1-seqscan-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0.01:2948.508]
set title 'linear / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear-indexscan-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear-bitmapscan-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/linear-seqscan-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/linear-indexscan-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear-bitmapscan-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear-seqscan-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0.01:2948.508]
set title 'linear / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear-indexscan-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear-bitmapscan-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/linear-seqscan-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/linear-indexscan-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear-bitmapscan-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear-seqscan-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0.01:2948.508]
set title 'linear / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear-indexscan-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear-bitmapscan-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/linear-seqscan-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/linear-indexscan-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear-bitmapscan-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear-seqscan-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0.01:42078.99]
set title 'cyclic\_500 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic_500-indexscan-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic_500-bitmapscan-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/cyclic_500-seqscan-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/cyclic_500-indexscan-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic_500-bitmapscan-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic_500-seqscan-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0.01:42078.99]
set title 'cyclic\_500 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic_500-indexscan-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic_500-bitmapscan-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/cyclic_500-seqscan-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/cyclic_500-indexscan-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic_500-bitmapscan-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic_500-seqscan-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0.01:42078.99]
set title 'cyclic\_500 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic_500-indexscan-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic_500-bitmapscan-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/cyclic_500-seqscan-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/cyclic_500-indexscan-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic_500-bitmapscan-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic_500-seqscan-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0.01:24597.849]
set title 'cyclic\_100 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic_100-indexscan-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic_100-bitmapscan-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/cyclic_100-seqscan-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/cyclic_100-indexscan-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic_100-bitmapscan-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic_100-seqscan-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0.01:24597.849]
set title 'cyclic\_100 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic_100-indexscan-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic_100-bitmapscan-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/cyclic_100-seqscan-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/cyclic_100-indexscan-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic_100-bitmapscan-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic_100-seqscan-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0.01:24597.849]
set title 'cyclic\_100 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic_100-indexscan-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic_100-bitmapscan-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/cyclic_100-seqscan-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/cyclic_100-indexscan-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic_100-bitmapscan-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic_100-seqscan-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0.01:6651.222]
set title 'cyclic\_10 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic_10-indexscan-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic_10-bitmapscan-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/cyclic_10-seqscan-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/cyclic_10-indexscan-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic_10-bitmapscan-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic_10-seqscan-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0.01:6651.222]
set title 'cyclic\_10 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic_10-indexscan-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic_10-bitmapscan-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/cyclic_10-seqscan-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/cyclic_10-indexscan-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic_10-bitmapscan-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic_10-seqscan-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0.01:6651.222]
set title 'cyclic\_10 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic_10-indexscan-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic_10-bitmapscan-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/cyclic_10-seqscan-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/cyclic_10-indexscan-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic_10-bitmapscan-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic_10-seqscan-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0.01:4207.432]
set title 'cyclic\_1 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic_1-indexscan-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic_1-bitmapscan-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/cyclic_1-seqscan-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/cyclic_1-indexscan-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic_1-bitmapscan-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic_1-seqscan-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0.01:4207.432]
set title 'cyclic\_1 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic_1-indexscan-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic_1-bitmapscan-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/cyclic_1-seqscan-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/cyclic_1-indexscan-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic_1-bitmapscan-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic_1-seqscan-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0.01:4207.432]
set title 'cyclic\_1 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic_1-indexscan-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic_1-bitmapscan-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/cyclic_1-seqscan-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/cyclic_1-indexscan-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic_1-bitmapscan-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic_1-seqscan-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0.01:3990.367]
set title 'cyclic / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic-indexscan-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic-bitmapscan-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/cyclic-seqscan-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/cyclic-indexscan-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic-bitmapscan-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic-seqscan-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0.01:3990.367]
set title 'cyclic / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic-indexscan-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic-bitmapscan-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/cyclic-seqscan-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/cyclic-indexscan-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic-bitmapscan-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic-seqscan-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0.01:3990.367]
set title 'cyclic / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic-indexscan-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic-bitmapscan-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/cyclic-seqscan-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/cyclic-indexscan-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic-bitmapscan-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic-seqscan-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

