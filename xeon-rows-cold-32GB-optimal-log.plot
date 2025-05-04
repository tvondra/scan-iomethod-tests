set terminal pdfcairo size 16,34 enhanced font 'Verdana,12'
set output 'xeon-rows-cold-32GB-optimal-log.pdf'

set log x
set log y
set yrange [0.01:]
set key bottom right

set xlabel 'selectivity'

set multiplot layout 9,3 rowsfirst
set xrange[0.000799999360000512:100]
set yrange[0.01:54127.22]
set title 'uniform / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/uniform-indexscan-off-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/uniform-indexscan-on-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/uniform-bitmapscan-off-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/uniform-seqscan-off-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/uniform-smoothscan-off-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/uniform-indexscan-off-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/uniform-indexscan-on-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/uniform-bitmapscan-off-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/uniform-seqscan-off-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.000799999360000512:100]
set yrange[0.01:54127.22]
set title 'uniform / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/uniform-indexscan-off-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/uniform-indexscan-on-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/uniform-bitmapscan-off-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/uniform-seqscan-off-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/uniform-smoothscan-off-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/uniform-indexscan-off-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/uniform-indexscan-on-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/uniform-bitmapscan-off-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/uniform-seqscan-off-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.000799999360000512:100]
set yrange[0.01:54127.22]
set title 'uniform / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/uniform-indexscan-off-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/uniform-indexscan-on-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/uniform-bitmapscan-off-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/uniform-seqscan-off-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/uniform-smoothscan-off-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/uniform-indexscan-off-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/uniform-indexscan-on-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/uniform-bitmapscan-off-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/uniform-seqscan-off-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.000419999664000269:100]
set yrange[0.01:49488.764]
set title 'linear\_25 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/linear_25-indexscan-off-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/linear_25-indexscan-on-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/linear_25-bitmapscan-off-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/linear_25-seqscan-off-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/linear_25-smoothscan-off-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear_25-indexscan-off-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/linear_25-indexscan-on-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/linear_25-bitmapscan-off-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/linear_25-seqscan-off-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.000419999664000269:100]
set yrange[0.01:49488.764]
set title 'linear\_25 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/linear_25-indexscan-off-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/linear_25-indexscan-on-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/linear_25-bitmapscan-off-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/linear_25-seqscan-off-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/linear_25-smoothscan-off-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear_25-indexscan-off-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/linear_25-indexscan-on-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/linear_25-bitmapscan-off-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/linear_25-seqscan-off-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.000419999664000269:100]
set yrange[0.01:49488.764]
set title 'linear\_25 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/linear_25-indexscan-off-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/linear_25-indexscan-on-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/linear_25-bitmapscan-off-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/linear_25-seqscan-off-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/linear_25-smoothscan-off-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear_25-indexscan-off-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/linear_25-indexscan-on-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/linear_25-bitmapscan-off-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/linear_25-seqscan-off-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.000519999584000333:100]
set yrange[0.01:58858.354]
set title 'linear\_10 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/linear_10-indexscan-off-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/linear_10-indexscan-on-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/linear_10-bitmapscan-off-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/linear_10-seqscan-off-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/linear_10-smoothscan-off-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear_10-indexscan-off-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/linear_10-indexscan-on-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/linear_10-bitmapscan-off-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/linear_10-seqscan-off-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.000519999584000333:100]
set yrange[0.01:58858.354]
set title 'linear\_10 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/linear_10-indexscan-off-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/linear_10-indexscan-on-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/linear_10-bitmapscan-off-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/linear_10-seqscan-off-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/linear_10-smoothscan-off-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear_10-indexscan-off-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/linear_10-indexscan-on-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/linear_10-bitmapscan-off-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/linear_10-seqscan-off-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.000519999584000333:100]
set yrange[0.01:58858.354]
set title 'linear\_10 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/linear_10-indexscan-off-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/linear_10-indexscan-on-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/linear_10-bitmapscan-off-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/linear_10-seqscan-off-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/linear_10-smoothscan-off-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear_10-indexscan-off-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/linear_10-indexscan-on-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/linear_10-bitmapscan-off-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/linear_10-seqscan-off-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.000619999504000397:100]
set yrange[0.01:58448.129]
set title 'linear\_1 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/linear_1-indexscan-off-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/linear_1-indexscan-on-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/linear_1-bitmapscan-off-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/linear_1-seqscan-off-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/linear_1-smoothscan-off-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear_1-indexscan-off-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/linear_1-indexscan-on-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/linear_1-bitmapscan-off-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/linear_1-seqscan-off-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.000619999504000397:100]
set yrange[0.01:58448.129]
set title 'linear\_1 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/linear_1-indexscan-off-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/linear_1-indexscan-on-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/linear_1-bitmapscan-off-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/linear_1-seqscan-off-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/linear_1-smoothscan-off-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear_1-indexscan-off-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/linear_1-indexscan-on-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/linear_1-bitmapscan-off-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/linear_1-seqscan-off-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.000619999504000397:100]
set yrange[0.01:58448.129]
set title 'linear\_1 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/linear_1-indexscan-off-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/linear_1-indexscan-on-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/linear_1-bitmapscan-off-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/linear_1-seqscan-off-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/linear_1-smoothscan-off-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear_1-indexscan-off-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/linear_1-indexscan-on-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/linear_1-bitmapscan-off-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/linear_1-seqscan-off-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.00099999920000064:100]
set yrange[0.01:20423.921]
set title 'linear / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/linear-indexscan-off-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/linear-indexscan-on-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/linear-bitmapscan-off-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/linear-seqscan-off-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/linear-smoothscan-off-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear-indexscan-off-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/linear-indexscan-on-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/linear-bitmapscan-off-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/linear-seqscan-off-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.00099999920000064:100]
set yrange[0.01:20423.921]
set title 'linear / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/linear-indexscan-off-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/linear-indexscan-on-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/linear-bitmapscan-off-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/linear-seqscan-off-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/linear-smoothscan-off-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear-indexscan-off-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/linear-indexscan-on-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/linear-bitmapscan-off-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/linear-seqscan-off-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.00099999920000064:100]
set yrange[0.01:20423.921]
set title 'linear / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/linear-indexscan-off-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/linear-indexscan-on-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/linear-bitmapscan-off-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/linear-seqscan-off-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/linear-smoothscan-off-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/linear-indexscan-off-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/linear-indexscan-on-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/linear-bitmapscan-off-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/linear-seqscan-off-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.000329999736000211:100]
set yrange[0.01:49491.263]
set title 'cyclic\_25 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/cyclic_25-indexscan-off-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/cyclic_25-indexscan-on-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/cyclic_25-bitmapscan-off-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/cyclic_25-seqscan-off-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/cyclic_25-smoothscan-off-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic_25-indexscan-off-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/cyclic_25-indexscan-on-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/cyclic_25-bitmapscan-off-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/cyclic_25-seqscan-off-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.000329999736000211:100]
set yrange[0.01:49491.263]
set title 'cyclic\_25 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/cyclic_25-indexscan-off-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/cyclic_25-indexscan-on-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/cyclic_25-bitmapscan-off-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/cyclic_25-seqscan-off-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/cyclic_25-smoothscan-off-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic_25-indexscan-off-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/cyclic_25-indexscan-on-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/cyclic_25-bitmapscan-off-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/cyclic_25-seqscan-off-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.000329999736000211:100]
set yrange[0.01:49491.263]
set title 'cyclic\_25 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/cyclic_25-indexscan-off-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/cyclic_25-indexscan-on-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/cyclic_25-bitmapscan-off-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/cyclic_25-seqscan-off-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/cyclic_25-smoothscan-off-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic_25-indexscan-off-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/cyclic_25-indexscan-on-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/cyclic_25-bitmapscan-off-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/cyclic_25-seqscan-off-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.000409999672000262:100]
set yrange[0.01:53260.35]
set title 'cyclic\_10 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/cyclic_10-indexscan-off-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/cyclic_10-indexscan-on-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/cyclic_10-bitmapscan-off-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/cyclic_10-seqscan-off-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/cyclic_10-smoothscan-off-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic_10-indexscan-off-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/cyclic_10-indexscan-on-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/cyclic_10-bitmapscan-off-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/cyclic_10-seqscan-off-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.000409999672000262:100]
set yrange[0.01:53260.35]
set title 'cyclic\_10 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/cyclic_10-indexscan-off-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/cyclic_10-indexscan-on-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/cyclic_10-bitmapscan-off-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/cyclic_10-seqscan-off-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/cyclic_10-smoothscan-off-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic_10-indexscan-off-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/cyclic_10-indexscan-on-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/cyclic_10-bitmapscan-off-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/cyclic_10-seqscan-off-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.000409999672000262:100]
set yrange[0.01:53260.35]
set title 'cyclic\_10 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/cyclic_10-indexscan-off-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/cyclic_10-indexscan-on-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/cyclic_10-bitmapscan-off-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/cyclic_10-seqscan-off-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/cyclic_10-smoothscan-off-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic_10-indexscan-off-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/cyclic_10-indexscan-on-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/cyclic_10-bitmapscan-off-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/cyclic_10-seqscan-off-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.00060999951200039:100]
set yrange[0.01:53841.088]
set title 'cyclic\_1 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/cyclic_1-indexscan-off-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/cyclic_1-indexscan-on-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/cyclic_1-bitmapscan-off-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/cyclic_1-seqscan-off-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/cyclic_1-smoothscan-off-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic_1-indexscan-off-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/cyclic_1-indexscan-on-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/cyclic_1-bitmapscan-off-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/cyclic_1-seqscan-off-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.00060999951200039:100]
set yrange[0.01:53841.088]
set title 'cyclic\_1 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/cyclic_1-indexscan-off-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/cyclic_1-indexscan-on-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/cyclic_1-bitmapscan-off-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/cyclic_1-seqscan-off-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/cyclic_1-smoothscan-off-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic_1-indexscan-off-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/cyclic_1-indexscan-on-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/cyclic_1-bitmapscan-off-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/cyclic_1-seqscan-off-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.00060999951200039:100]
set yrange[0.01:53841.088]
set title 'cyclic\_1 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/cyclic_1-indexscan-off-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/cyclic_1-indexscan-on-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/cyclic_1-bitmapscan-off-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/cyclic_1-seqscan-off-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/cyclic_1-smoothscan-off-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic_1-indexscan-off-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/cyclic_1-indexscan-on-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/cyclic_1-bitmapscan-off-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/cyclic_1-seqscan-off-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.00099999920000064:100]
set yrange[0.01:34921.371]
set title 'cyclic / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/cyclic-indexscan-off-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/cyclic-indexscan-on-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/cyclic-bitmapscan-off-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/cyclic-seqscan-off-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/cyclic-smoothscan-off-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic-indexscan-off-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/cyclic-indexscan-on-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/cyclic-bitmapscan-off-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/cyclic-seqscan-off-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.00099999920000064:100]
set yrange[0.01:34921.371]
set title 'cyclic / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/cyclic-indexscan-off-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/cyclic-indexscan-on-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/cyclic-bitmapscan-off-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/cyclic-seqscan-off-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/cyclic-smoothscan-off-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic-indexscan-off-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/cyclic-indexscan-on-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/cyclic-bitmapscan-off-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/cyclic-seqscan-off-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.00099999920000064:100]
set yrange[0.01:34921.371]
set title 'cyclic / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/xeon/cyclic-indexscan-off-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/xeon/cyclic-indexscan-on-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/xeon/cyclic-bitmapscan-off-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/xeon/cyclic-seqscan-off-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/xeon/cyclic-smoothscan-off-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/xeon/cyclic-indexscan-off-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/xeon/cyclic-indexscan-on-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/xeon/cyclic-bitmapscan-off-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/xeon/cyclic-seqscan-off-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
