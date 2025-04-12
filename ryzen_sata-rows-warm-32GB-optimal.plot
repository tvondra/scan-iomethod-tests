set terminal pdfcairo size 16,40 enhanced font 'Verdana,12'
set output 'ryzen_sata-rows-warm-32GB-optimal.pdf'

set log x
set yrange [0:]
set key top left

set xlabel 'selectivity'

set multiplot layout 11,3 rowsfirst
set xrange[0.01:100]
set yrange[0:7467.187]
set title 'uniform / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/uniform-indexscan-0-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/uniform-bitmapscan-0-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/uniform-seqscan-0-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/uniform-indexscan-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/uniform-bitmapscan-0-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/uniform-seqscan-0-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:7467.187]
set title 'uniform / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/uniform-indexscan-16-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/uniform-bitmapscan-16-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/uniform-seqscan-16-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/uniform-indexscan-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/uniform-bitmapscan-16-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/uniform-seqscan-16-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:7467.187]
set title 'uniform / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/uniform-indexscan-128-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/uniform-bitmapscan-128-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/uniform-seqscan-128-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/uniform-indexscan-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/uniform-bitmapscan-128-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/uniform-seqscan-128-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:4330.889]
set title 'linear\_500 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear_500-indexscan-0-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear_500-bitmapscan-0-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/linear_500-seqscan-0-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/linear_500-indexscan-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear_500-bitmapscan-0-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear_500-seqscan-0-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:4330.889]
set title 'linear\_500 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear_500-indexscan-16-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear_500-bitmapscan-16-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/linear_500-seqscan-16-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/linear_500-indexscan-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear_500-bitmapscan-16-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear_500-seqscan-16-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:4330.889]
set title 'linear\_500 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear_500-indexscan-128-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear_500-bitmapscan-128-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/linear_500-seqscan-128-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/linear_500-indexscan-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear_500-bitmapscan-128-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear_500-seqscan-128-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:5718.343]
set title 'linear\_100 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear_100-indexscan-0-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear_100-bitmapscan-0-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/linear_100-seqscan-0-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/linear_100-indexscan-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear_100-bitmapscan-0-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear_100-seqscan-0-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:5718.343]
set title 'linear\_100 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear_100-indexscan-16-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear_100-bitmapscan-16-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/linear_100-seqscan-16-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/linear_100-indexscan-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear_100-bitmapscan-16-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear_100-seqscan-16-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:5718.343]
set title 'linear\_100 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear_100-indexscan-128-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear_100-bitmapscan-128-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/linear_100-seqscan-128-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/linear_100-indexscan-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear_100-bitmapscan-128-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear_100-seqscan-128-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:3959.485]
set title 'linear\_10 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear_10-indexscan-0-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear_10-bitmapscan-0-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/linear_10-seqscan-0-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/linear_10-indexscan-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear_10-bitmapscan-0-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear_10-seqscan-0-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:3959.485]
set title 'linear\_10 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear_10-indexscan-16-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear_10-bitmapscan-16-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/linear_10-seqscan-16-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/linear_10-indexscan-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear_10-bitmapscan-16-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear_10-seqscan-16-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:3959.485]
set title 'linear\_10 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear_10-indexscan-128-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear_10-bitmapscan-128-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/linear_10-seqscan-128-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/linear_10-indexscan-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear_10-bitmapscan-128-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear_10-seqscan-128-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:3242.672]
set title 'linear\_1 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear_1-indexscan-0-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear_1-bitmapscan-0-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/linear_1-seqscan-0-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/linear_1-indexscan-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear_1-bitmapscan-0-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear_1-seqscan-0-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:3242.672]
set title 'linear\_1 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear_1-indexscan-16-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear_1-bitmapscan-16-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/linear_1-seqscan-16-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/linear_1-indexscan-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear_1-bitmapscan-16-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear_1-seqscan-16-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:3242.672]
set title 'linear\_1 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear_1-indexscan-128-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear_1-bitmapscan-128-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/linear_1-seqscan-128-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/linear_1-indexscan-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear_1-bitmapscan-128-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear_1-seqscan-128-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:1818.096]
set title 'linear / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear-indexscan-0-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear-bitmapscan-0-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/linear-seqscan-0-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/linear-indexscan-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear-bitmapscan-0-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear-seqscan-0-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:1818.096]
set title 'linear / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear-indexscan-16-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear-bitmapscan-16-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/linear-seqscan-16-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/linear-indexscan-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear-bitmapscan-16-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear-seqscan-16-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:1818.096]
set title 'linear / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear-indexscan-128-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear-bitmapscan-128-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/linear-seqscan-128-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/linear-indexscan-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear-bitmapscan-128-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear-seqscan-128-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:4304.231]
set title 'cyclic\_500 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic_500-indexscan-0-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic_500-bitmapscan-0-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/cyclic_500-seqscan-0-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/cyclic_500-indexscan-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic_500-bitmapscan-0-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic_500-seqscan-0-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:4304.231]
set title 'cyclic\_500 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic_500-indexscan-16-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic_500-bitmapscan-16-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/cyclic_500-seqscan-16-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/cyclic_500-indexscan-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic_500-bitmapscan-16-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic_500-seqscan-16-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:4304.231]
set title 'cyclic\_500 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic_500-indexscan-128-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic_500-bitmapscan-128-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/cyclic_500-seqscan-128-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/cyclic_500-indexscan-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic_500-bitmapscan-128-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic_500-seqscan-128-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:5723.031]
set title 'cyclic\_100 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic_100-indexscan-0-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic_100-bitmapscan-0-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/cyclic_100-seqscan-0-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/cyclic_100-indexscan-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic_100-bitmapscan-0-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic_100-seqscan-0-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:5723.031]
set title 'cyclic\_100 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic_100-indexscan-16-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic_100-bitmapscan-16-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/cyclic_100-seqscan-16-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/cyclic_100-indexscan-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic_100-bitmapscan-16-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic_100-seqscan-16-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:5723.031]
set title 'cyclic\_100 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic_100-indexscan-128-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic_100-bitmapscan-128-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/cyclic_100-seqscan-128-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/cyclic_100-indexscan-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic_100-bitmapscan-128-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic_100-seqscan-128-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:3967.072]
set title 'cyclic\_10 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic_10-indexscan-0-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic_10-bitmapscan-0-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/cyclic_10-seqscan-0-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/cyclic_10-indexscan-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic_10-bitmapscan-0-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic_10-seqscan-0-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:3967.072]
set title 'cyclic\_10 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic_10-indexscan-16-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic_10-bitmapscan-16-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/cyclic_10-seqscan-16-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/cyclic_10-indexscan-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic_10-bitmapscan-16-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic_10-seqscan-16-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:3967.072]
set title 'cyclic\_10 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic_10-indexscan-128-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic_10-bitmapscan-128-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/cyclic_10-seqscan-128-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/cyclic_10-indexscan-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic_10-bitmapscan-128-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic_10-seqscan-128-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:3246.261]
set title 'cyclic\_1 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic_1-indexscan-0-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic_1-bitmapscan-0-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/cyclic_1-seqscan-0-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/cyclic_1-indexscan-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic_1-bitmapscan-0-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic_1-seqscan-0-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:3246.261]
set title 'cyclic\_1 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic_1-indexscan-16-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic_1-bitmapscan-16-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/cyclic_1-seqscan-16-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/cyclic_1-indexscan-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic_1-bitmapscan-16-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic_1-seqscan-16-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:3246.261]
set title 'cyclic\_1 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic_1-indexscan-128-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic_1-bitmapscan-128-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/cyclic_1-seqscan-128-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/cyclic_1-indexscan-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic_1-bitmapscan-128-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic_1-seqscan-128-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:2383.437]
set title 'cyclic / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic-indexscan-0-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic-bitmapscan-0-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/cyclic-seqscan-0-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/cyclic-indexscan-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic-bitmapscan-0-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic-seqscan-0-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:2383.437]
set title 'cyclic / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic-indexscan-16-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic-bitmapscan-16-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/cyclic-seqscan-16-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/cyclic-indexscan-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic-bitmapscan-16-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic-seqscan-16-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:2383.437]
set title 'cyclic / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic-indexscan-128-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic-bitmapscan-128-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_sata/cyclic-seqscan-128-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_sata/cyclic-indexscan-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic-bitmapscan-128-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic-seqscan-128-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

