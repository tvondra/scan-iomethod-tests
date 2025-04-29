set terminal pdfcairo size 16,40 enhanced font 'Verdana,12'
set output 'xeon-rows-warm-32GB-optimal-log.pdf'

set log x
set log y
set yrange [0.01:]
set key top left

set xlabel 'selectivity'

set multiplot layout 11,3 rowsfirst
set xrange[0.01:100]
set yrange[0.01:17004.78]
set title 'uniform / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/uniform-indexscan-0-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/uniform-indexscan-prefetch-0-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/uniform-bitmapscan-0-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/uniform-seqscan-0-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/uniform-smoothscan-0-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/uniform-smoothscan-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/uniform-indexscan-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/uniform-indexscan-prefetch-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/uniform-bitmapscan-0-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/uniform-seqscan-0-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0.01:17004.78]
set title 'uniform / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/uniform-indexscan-16-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/uniform-indexscan-prefetch-16-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/uniform-bitmapscan-16-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/uniform-seqscan-16-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/uniform-smoothscan-16-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/uniform-smoothscan-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/uniform-indexscan-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/uniform-indexscan-prefetch-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/uniform-bitmapscan-16-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/uniform-seqscan-16-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0.01:17004.78]
set title 'uniform / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/uniform-indexscan-128-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/uniform-indexscan-prefetch-128-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/uniform-bitmapscan-128-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/uniform-seqscan-128-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/uniform-smoothscan-128-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/uniform-smoothscan-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/uniform-indexscan-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/uniform-indexscan-prefetch-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/uniform-bitmapscan-128-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/uniform-seqscan-128-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0.01:11171.002]
set title 'linear\_500 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/linear_500-indexscan-0-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/linear_500-indexscan-prefetch-0-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/linear_500-bitmapscan-0-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/linear_500-seqscan-0-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/linear_500-smoothscan-0-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear_500-smoothscan-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear_500-indexscan-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/linear_500-indexscan-prefetch-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/linear_500-bitmapscan-0-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/linear_500-seqscan-0-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0.01:11171.002]
set title 'linear\_500 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/linear_500-indexscan-16-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/linear_500-indexscan-prefetch-16-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/linear_500-bitmapscan-16-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/linear_500-seqscan-16-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/linear_500-smoothscan-16-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear_500-smoothscan-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear_500-indexscan-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/linear_500-indexscan-prefetch-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/linear_500-bitmapscan-16-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/linear_500-seqscan-16-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0.01:11171.002]
set title 'linear\_500 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/linear_500-indexscan-128-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/linear_500-indexscan-prefetch-128-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/linear_500-bitmapscan-128-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/linear_500-seqscan-128-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/linear_500-smoothscan-128-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear_500-smoothscan-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear_500-indexscan-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/linear_500-indexscan-prefetch-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/linear_500-bitmapscan-128-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/linear_500-seqscan-128-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0.01:16827.511]
set title 'linear\_100 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/linear_100-indexscan-0-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/linear_100-indexscan-prefetch-0-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/linear_100-bitmapscan-0-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/linear_100-seqscan-0-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/linear_100-smoothscan-0-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear_100-smoothscan-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear_100-indexscan-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/linear_100-indexscan-prefetch-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/linear_100-bitmapscan-0-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/linear_100-seqscan-0-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0.01:16827.511]
set title 'linear\_100 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/linear_100-indexscan-16-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/linear_100-indexscan-prefetch-16-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/linear_100-bitmapscan-16-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/linear_100-seqscan-16-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/linear_100-smoothscan-16-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear_100-smoothscan-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear_100-indexscan-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/linear_100-indexscan-prefetch-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/linear_100-bitmapscan-16-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/linear_100-seqscan-16-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0.01:16827.511]
set title 'linear\_100 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/linear_100-indexscan-128-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/linear_100-indexscan-prefetch-128-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/linear_100-bitmapscan-128-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/linear_100-seqscan-128-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/linear_100-smoothscan-128-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear_100-smoothscan-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear_100-indexscan-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/linear_100-indexscan-prefetch-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/linear_100-bitmapscan-128-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/linear_100-seqscan-128-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0.01:17670.517]
set title 'linear\_10 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/linear_10-indexscan-0-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/linear_10-indexscan-prefetch-0-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/linear_10-bitmapscan-0-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/linear_10-seqscan-0-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/linear_10-smoothscan-0-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear_10-smoothscan-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear_10-indexscan-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/linear_10-indexscan-prefetch-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/linear_10-bitmapscan-0-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/linear_10-seqscan-0-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0.01:17670.517]
set title 'linear\_10 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/linear_10-indexscan-16-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/linear_10-indexscan-prefetch-16-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/linear_10-bitmapscan-16-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/linear_10-seqscan-16-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/linear_10-smoothscan-16-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear_10-smoothscan-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear_10-indexscan-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/linear_10-indexscan-prefetch-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/linear_10-bitmapscan-16-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/linear_10-seqscan-16-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0.01:17670.517]
set title 'linear\_10 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/linear_10-indexscan-128-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/linear_10-indexscan-prefetch-128-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/linear_10-bitmapscan-128-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/linear_10-seqscan-128-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/linear_10-smoothscan-128-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear_10-smoothscan-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear_10-indexscan-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/linear_10-indexscan-prefetch-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/linear_10-bitmapscan-128-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/linear_10-seqscan-128-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0.01:17733.247]
set title 'linear\_1 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/linear_1-indexscan-0-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/linear_1-indexscan-prefetch-0-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/linear_1-bitmapscan-0-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/linear_1-seqscan-0-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/linear_1-smoothscan-0-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear_1-smoothscan-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear_1-indexscan-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/linear_1-indexscan-prefetch-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/linear_1-bitmapscan-0-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/linear_1-seqscan-0-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0.01:17733.247]
set title 'linear\_1 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/linear_1-indexscan-16-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/linear_1-indexscan-prefetch-16-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/linear_1-bitmapscan-16-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/linear_1-seqscan-16-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/linear_1-smoothscan-16-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear_1-smoothscan-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear_1-indexscan-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/linear_1-indexscan-prefetch-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/linear_1-bitmapscan-16-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/linear_1-seqscan-16-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0.01:17733.247]
set title 'linear\_1 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/linear_1-indexscan-128-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/linear_1-indexscan-prefetch-128-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/linear_1-bitmapscan-128-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/linear_1-seqscan-128-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/linear_1-smoothscan-128-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear_1-smoothscan-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear_1-indexscan-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/linear_1-indexscan-prefetch-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/linear_1-bitmapscan-128-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/linear_1-seqscan-128-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0.01:15427.707]
set title 'linear / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/linear-indexscan-0-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/linear-indexscan-prefetch-0-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/linear-bitmapscan-0-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/linear-seqscan-0-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/linear-smoothscan-0-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear-smoothscan-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear-indexscan-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/linear-indexscan-prefetch-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/linear-bitmapscan-0-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/linear-seqscan-0-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0.01:15427.707]
set title 'linear / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/linear-indexscan-16-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/linear-indexscan-prefetch-16-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/linear-bitmapscan-16-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/linear-seqscan-16-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/linear-smoothscan-16-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear-smoothscan-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear-indexscan-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/linear-indexscan-prefetch-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/linear-bitmapscan-16-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/linear-seqscan-16-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0.01:15427.707]
set title 'linear / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/linear-indexscan-128-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/linear-indexscan-prefetch-128-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/linear-bitmapscan-128-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/linear-seqscan-128-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/linear-smoothscan-128-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear-smoothscan-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear-indexscan-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/linear-indexscan-prefetch-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/linear-bitmapscan-128-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/linear-seqscan-128-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0.01:11503.85]
set title 'cyclic\_500 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/cyclic_500-indexscan-0-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/cyclic_500-indexscan-prefetch-0-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/cyclic_500-bitmapscan-0-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/cyclic_500-seqscan-0-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/cyclic_500-smoothscan-0-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic_500-smoothscan-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic_500-indexscan-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/cyclic_500-indexscan-prefetch-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/cyclic_500-bitmapscan-0-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/cyclic_500-seqscan-0-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0.01:11503.85]
set title 'cyclic\_500 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/cyclic_500-indexscan-16-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/cyclic_500-indexscan-prefetch-16-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/cyclic_500-bitmapscan-16-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/cyclic_500-seqscan-16-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/cyclic_500-smoothscan-16-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic_500-smoothscan-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic_500-indexscan-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/cyclic_500-indexscan-prefetch-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/cyclic_500-bitmapscan-16-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/cyclic_500-seqscan-16-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0.01:11503.85]
set title 'cyclic\_500 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/cyclic_500-indexscan-128-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/cyclic_500-indexscan-prefetch-128-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/cyclic_500-bitmapscan-128-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/cyclic_500-seqscan-128-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/cyclic_500-smoothscan-128-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic_500-smoothscan-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic_500-indexscan-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/cyclic_500-indexscan-prefetch-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/cyclic_500-bitmapscan-128-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/cyclic_500-seqscan-128-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0.01:16900.421]
set title 'cyclic\_100 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/cyclic_100-indexscan-0-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/cyclic_100-indexscan-prefetch-0-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/cyclic_100-bitmapscan-0-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/cyclic_100-seqscan-0-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/cyclic_100-smoothscan-0-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic_100-smoothscan-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic_100-indexscan-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/cyclic_100-indexscan-prefetch-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/cyclic_100-bitmapscan-0-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/cyclic_100-seqscan-0-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0.01:16900.421]
set title 'cyclic\_100 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/cyclic_100-indexscan-16-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/cyclic_100-indexscan-prefetch-16-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/cyclic_100-bitmapscan-16-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/cyclic_100-seqscan-16-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/cyclic_100-smoothscan-16-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic_100-smoothscan-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic_100-indexscan-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/cyclic_100-indexscan-prefetch-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/cyclic_100-bitmapscan-16-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/cyclic_100-seqscan-16-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0.01:16900.421]
set title 'cyclic\_100 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/cyclic_100-indexscan-128-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/cyclic_100-indexscan-prefetch-128-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/cyclic_100-bitmapscan-128-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/cyclic_100-seqscan-128-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/cyclic_100-smoothscan-128-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic_100-smoothscan-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic_100-indexscan-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/cyclic_100-indexscan-prefetch-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/cyclic_100-bitmapscan-128-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/cyclic_100-seqscan-128-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0.01:17552.592]
set title 'cyclic\_10 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/cyclic_10-indexscan-0-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/cyclic_10-indexscan-prefetch-0-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/cyclic_10-bitmapscan-0-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/cyclic_10-seqscan-0-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/cyclic_10-smoothscan-0-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic_10-smoothscan-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic_10-indexscan-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/cyclic_10-indexscan-prefetch-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/cyclic_10-bitmapscan-0-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/cyclic_10-seqscan-0-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0.01:17552.592]
set title 'cyclic\_10 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/cyclic_10-indexscan-16-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/cyclic_10-indexscan-prefetch-16-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/cyclic_10-bitmapscan-16-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/cyclic_10-seqscan-16-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/cyclic_10-smoothscan-16-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic_10-smoothscan-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic_10-indexscan-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/cyclic_10-indexscan-prefetch-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/cyclic_10-bitmapscan-16-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/cyclic_10-seqscan-16-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0.01:17552.592]
set title 'cyclic\_10 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/cyclic_10-indexscan-128-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/cyclic_10-indexscan-prefetch-128-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/cyclic_10-bitmapscan-128-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/cyclic_10-seqscan-128-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/cyclic_10-smoothscan-128-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic_10-smoothscan-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic_10-indexscan-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/cyclic_10-indexscan-prefetch-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/cyclic_10-bitmapscan-128-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/cyclic_10-seqscan-128-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0.01:14546.598]
set title 'cyclic\_1 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/cyclic_1-indexscan-0-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/cyclic_1-indexscan-prefetch-0-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/cyclic_1-bitmapscan-0-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/cyclic_1-seqscan-0-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/cyclic_1-smoothscan-0-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic_1-smoothscan-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic_1-indexscan-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/cyclic_1-indexscan-prefetch-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/cyclic_1-bitmapscan-0-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/cyclic_1-seqscan-0-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0.01:14546.598]
set title 'cyclic\_1 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/cyclic_1-indexscan-16-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/cyclic_1-indexscan-prefetch-16-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/cyclic_1-bitmapscan-16-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/cyclic_1-seqscan-16-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/cyclic_1-smoothscan-16-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic_1-smoothscan-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic_1-indexscan-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/cyclic_1-indexscan-prefetch-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/cyclic_1-bitmapscan-16-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/cyclic_1-seqscan-16-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0.01:14546.598]
set title 'cyclic\_1 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/cyclic_1-indexscan-128-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/cyclic_1-indexscan-prefetch-128-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/cyclic_1-bitmapscan-128-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/cyclic_1-seqscan-128-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/cyclic_1-smoothscan-128-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic_1-smoothscan-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic_1-indexscan-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/cyclic_1-indexscan-prefetch-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/cyclic_1-bitmapscan-128-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/cyclic_1-seqscan-128-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0.01:13264.49]
set title 'cyclic / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/cyclic-indexscan-0-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/cyclic-indexscan-prefetch-0-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/cyclic-bitmapscan-0-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/cyclic-seqscan-0-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/cyclic-smoothscan-0-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic-smoothscan-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic-indexscan-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/cyclic-indexscan-prefetch-0-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/cyclic-bitmapscan-0-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/cyclic-seqscan-0-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0.01:13264.49]
set title 'cyclic / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/cyclic-indexscan-16-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/cyclic-indexscan-prefetch-16-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/cyclic-bitmapscan-16-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/cyclic-seqscan-16-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/cyclic-smoothscan-16-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic-smoothscan-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic-indexscan-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/cyclic-indexscan-prefetch-16-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/cyclic-bitmapscan-16-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/cyclic-seqscan-16-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0.01:13264.49]
set title 'cyclic / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/cyclic-indexscan-128-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/cyclic-indexscan-prefetch-128-32GB-no.data"    using 1:4 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/cyclic-bitmapscan-128-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/cyclic-seqscan-128-32GB-no.data"      using 1:4 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/cyclic-smoothscan-128-32GB-no.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic-smoothscan-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic-indexscan-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/cyclic-indexscan-prefetch-128-32GB-yes.data"   using 1:4 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/cyclic-bitmapscan-128-32GB-yes.data"  using 1:4 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/cyclic-seqscan-128-32GB-yes.data"     using 1:4 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
