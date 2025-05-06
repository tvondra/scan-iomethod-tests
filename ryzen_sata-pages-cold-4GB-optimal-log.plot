set terminal pdfcairo size 16,34 enhanced font 'Verdana,12'
set output 'ryzen_sata-pages-cold-4GB-optimal-log.pdf'

set log x
set log y
set yrange [0.01:]
set key bottom right

set xlabel 'selectivity'

set multiplot layout 9,3 rowsfirst
set xrange[0.0133199893440085:100]
set yrange[0.01:47233.343]
set title 'uniform / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/uniform-indexscan-off-0-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/uniform-indexscan-on-0-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_sata/uniform-indexscan-17-off-0-4GB-no.data"    using 1:3 with points pt 6 ps 0.75 lc rgb "#ffeeee" title "indexscan (17)", \
     "data/ryzen_sata/uniform-bitmapscan-off-0-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_sata/uniform-bitmapscan-17-off-0-4GB-no.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cceeee" title "bitmapscan (17)", \
     "data/ryzen_sata/uniform-seqscan-off-0-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_sata/uniform-seqscan-17-off-0-4GB-no.data"      using 1:3 with points pt 6 ps 0.75 lc rgb "#ccdddd" title "seqscan (17)", \
     "data/ryzen_sata/uniform-smoothscan-off-0-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_sata/uniform-indexscan-off-0-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/uniform-indexscan-17-off-0-4GB-yes.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cc5555" title "indexscan (17, optimal)", \
     "data/ryzen_sata/uniform-indexscan-on-0-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_sata/uniform-bitmapscan-off-0-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/uniform-bitmapscan-17-off-0-4GB-yes.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#55bb55" title "bitmapscan (17, optimal)", \
     "data/ryzen_sata/uniform-seqscan-off-0-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)", \
     "data/ryzen_sata/uniform-seqscan-17-off-0-4GB-yes.data"     using 1:3 with points pt 6 ps 0.75 lc rgb "#5555cc" title "seqscan (17, optimal)"
set xrange[0.0133199893440085:100]
set yrange[0.01:47233.343]
set title 'uniform / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/uniform-indexscan-off-16-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/uniform-indexscan-on-16-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_sata/uniform-indexscan-17-off-16-4GB-no.data"    using 1:3 with points pt 6 ps 0.75 lc rgb "#ffeeee" title "indexscan (17)", \
     "data/ryzen_sata/uniform-bitmapscan-off-16-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_sata/uniform-bitmapscan-17-off-16-4GB-no.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cceeee" title "bitmapscan (17)", \
     "data/ryzen_sata/uniform-seqscan-off-16-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_sata/uniform-seqscan-17-off-16-4GB-no.data"      using 1:3 with points pt 6 ps 0.75 lc rgb "#ccdddd" title "seqscan (17)", \
     "data/ryzen_sata/uniform-smoothscan-off-16-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_sata/uniform-indexscan-off-16-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/uniform-indexscan-17-off-16-4GB-yes.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cc5555" title "indexscan (17, optimal)", \
     "data/ryzen_sata/uniform-indexscan-on-16-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_sata/uniform-bitmapscan-off-16-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/uniform-bitmapscan-17-off-16-4GB-yes.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#55bb55" title "bitmapscan (17, optimal)", \
     "data/ryzen_sata/uniform-seqscan-off-16-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)", \
     "data/ryzen_sata/uniform-seqscan-17-off-16-4GB-yes.data"     using 1:3 with points pt 6 ps 0.75 lc rgb "#5555cc" title "seqscan (17, optimal)"
set xrange[0.0133199893440085:100]
set yrange[0.01:47233.343]
set title 'uniform / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/uniform-indexscan-off-128-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/uniform-indexscan-on-128-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_sata/uniform-indexscan-17-off-128-4GB-no.data"    using 1:3 with points pt 6 ps 0.75 lc rgb "#ffeeee" title "indexscan (17)", \
     "data/ryzen_sata/uniform-bitmapscan-off-128-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_sata/uniform-bitmapscan-17-off-128-4GB-no.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cceeee" title "bitmapscan (17)", \
     "data/ryzen_sata/uniform-seqscan-off-128-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_sata/uniform-seqscan-17-off-128-4GB-no.data"      using 1:3 with points pt 6 ps 0.75 lc rgb "#ccdddd" title "seqscan (17)", \
     "data/ryzen_sata/uniform-smoothscan-off-128-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_sata/uniform-indexscan-off-128-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/uniform-indexscan-17-off-128-4GB-yes.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cc5555" title "indexscan (17, optimal)", \
     "data/ryzen_sata/uniform-indexscan-on-128-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_sata/uniform-bitmapscan-off-128-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/uniform-bitmapscan-17-off-128-4GB-yes.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#55bb55" title "bitmapscan (17, optimal)", \
     "data/ryzen_sata/uniform-seqscan-off-128-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)", \
     "data/ryzen_sata/uniform-seqscan-17-off-128-4GB-yes.data"     using 1:3 with points pt 6 ps 0.75 lc rgb "#5555cc" title "seqscan (17, optimal)"
set xrange[0.0059399952480038:100]
set yrange[0.01:45124.443]
set title 'linear\_25 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear_25-indexscan-off-0-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear_25-indexscan-on-0-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_sata/linear_25-indexscan-17-off-0-4GB-no.data"    using 1:3 with points pt 6 ps 0.75 lc rgb "#ffeeee" title "indexscan (17)", \
     "data/ryzen_sata/linear_25-bitmapscan-off-0-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_sata/linear_25-bitmapscan-17-off-0-4GB-no.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cceeee" title "bitmapscan (17)", \
     "data/ryzen_sata/linear_25-seqscan-off-0-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_sata/linear_25-seqscan-17-off-0-4GB-no.data"      using 1:3 with points pt 6 ps 0.75 lc rgb "#ccdddd" title "seqscan (17)", \
     "data/ryzen_sata/linear_25-smoothscan-off-0-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_sata/linear_25-indexscan-off-0-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear_25-indexscan-17-off-0-4GB-yes.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cc5555" title "indexscan (17, optimal)", \
     "data/ryzen_sata/linear_25-indexscan-on-0-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_sata/linear_25-bitmapscan-off-0-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear_25-bitmapscan-17-off-0-4GB-yes.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#55bb55" title "bitmapscan (17, optimal)", \
     "data/ryzen_sata/linear_25-seqscan-off-0-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)", \
     "data/ryzen_sata/linear_25-seqscan-17-off-0-4GB-yes.data"     using 1:3 with points pt 6 ps 0.75 lc rgb "#5555cc" title "seqscan (17, optimal)"
set xrange[0.0059399952480038:100]
set yrange[0.01:45124.443]
set title 'linear\_25 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear_25-indexscan-off-16-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear_25-indexscan-on-16-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_sata/linear_25-indexscan-17-off-16-4GB-no.data"    using 1:3 with points pt 6 ps 0.75 lc rgb "#ffeeee" title "indexscan (17)", \
     "data/ryzen_sata/linear_25-bitmapscan-off-16-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_sata/linear_25-bitmapscan-17-off-16-4GB-no.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cceeee" title "bitmapscan (17)", \
     "data/ryzen_sata/linear_25-seqscan-off-16-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_sata/linear_25-seqscan-17-off-16-4GB-no.data"      using 1:3 with points pt 6 ps 0.75 lc rgb "#ccdddd" title "seqscan (17)", \
     "data/ryzen_sata/linear_25-smoothscan-off-16-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_sata/linear_25-indexscan-off-16-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear_25-indexscan-17-off-16-4GB-yes.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cc5555" title "indexscan (17, optimal)", \
     "data/ryzen_sata/linear_25-indexscan-on-16-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_sata/linear_25-bitmapscan-off-16-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear_25-bitmapscan-17-off-16-4GB-yes.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#55bb55" title "bitmapscan (17, optimal)", \
     "data/ryzen_sata/linear_25-seqscan-off-16-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)", \
     "data/ryzen_sata/linear_25-seqscan-17-off-16-4GB-yes.data"     using 1:3 with points pt 6 ps 0.75 lc rgb "#5555cc" title "seqscan (17, optimal)"
set xrange[0.0059399952480038:100]
set yrange[0.01:45124.443]
set title 'linear\_25 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear_25-indexscan-off-128-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear_25-indexscan-on-128-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_sata/linear_25-indexscan-17-off-128-4GB-no.data"    using 1:3 with points pt 6 ps 0.75 lc rgb "#ffeeee" title "indexscan (17)", \
     "data/ryzen_sata/linear_25-bitmapscan-off-128-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_sata/linear_25-bitmapscan-17-off-128-4GB-no.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cceeee" title "bitmapscan (17)", \
     "data/ryzen_sata/linear_25-seqscan-off-128-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_sata/linear_25-seqscan-17-off-128-4GB-no.data"      using 1:3 with points pt 6 ps 0.75 lc rgb "#ccdddd" title "seqscan (17)", \
     "data/ryzen_sata/linear_25-smoothscan-off-128-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_sata/linear_25-indexscan-off-128-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear_25-indexscan-17-off-128-4GB-yes.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cc5555" title "indexscan (17, optimal)", \
     "data/ryzen_sata/linear_25-indexscan-on-128-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_sata/linear_25-bitmapscan-off-128-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear_25-bitmapscan-17-off-128-4GB-yes.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#55bb55" title "bitmapscan (17, optimal)", \
     "data/ryzen_sata/linear_25-seqscan-off-128-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)", \
     "data/ryzen_sata/linear_25-seqscan-17-off-128-4GB-yes.data"     using 1:3 with points pt 6 ps 0.75 lc rgb "#5555cc" title "seqscan (17, optimal)"
set xrange[0.00791999366400507:100]
set yrange[0.01:50266.949]
set title 'linear\_10 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear_10-indexscan-off-0-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear_10-indexscan-on-0-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_sata/linear_10-indexscan-17-off-0-4GB-no.data"    using 1:3 with points pt 6 ps 0.75 lc rgb "#ffeeee" title "indexscan (17)", \
     "data/ryzen_sata/linear_10-bitmapscan-off-0-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_sata/linear_10-bitmapscan-17-off-0-4GB-no.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cceeee" title "bitmapscan (17)", \
     "data/ryzen_sata/linear_10-seqscan-off-0-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_sata/linear_10-seqscan-17-off-0-4GB-no.data"      using 1:3 with points pt 6 ps 0.75 lc rgb "#ccdddd" title "seqscan (17)", \
     "data/ryzen_sata/linear_10-smoothscan-off-0-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_sata/linear_10-indexscan-off-0-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear_10-indexscan-17-off-0-4GB-yes.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cc5555" title "indexscan (17, optimal)", \
     "data/ryzen_sata/linear_10-indexscan-on-0-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_sata/linear_10-bitmapscan-off-0-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear_10-bitmapscan-17-off-0-4GB-yes.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#55bb55" title "bitmapscan (17, optimal)", \
     "data/ryzen_sata/linear_10-seqscan-off-0-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)", \
     "data/ryzen_sata/linear_10-seqscan-17-off-0-4GB-yes.data"     using 1:3 with points pt 6 ps 0.75 lc rgb "#5555cc" title "seqscan (17, optimal)"
set xrange[0.00791999366400507:100]
set yrange[0.01:50266.949]
set title 'linear\_10 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear_10-indexscan-off-16-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear_10-indexscan-on-16-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_sata/linear_10-indexscan-17-off-16-4GB-no.data"    using 1:3 with points pt 6 ps 0.75 lc rgb "#ffeeee" title "indexscan (17)", \
     "data/ryzen_sata/linear_10-bitmapscan-off-16-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_sata/linear_10-bitmapscan-17-off-16-4GB-no.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cceeee" title "bitmapscan (17)", \
     "data/ryzen_sata/linear_10-seqscan-off-16-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_sata/linear_10-seqscan-17-off-16-4GB-no.data"      using 1:3 with points pt 6 ps 0.75 lc rgb "#ccdddd" title "seqscan (17)", \
     "data/ryzen_sata/linear_10-smoothscan-off-16-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_sata/linear_10-indexscan-off-16-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear_10-indexscan-17-off-16-4GB-yes.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cc5555" title "indexscan (17, optimal)", \
     "data/ryzen_sata/linear_10-indexscan-on-16-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_sata/linear_10-bitmapscan-off-16-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear_10-bitmapscan-17-off-16-4GB-yes.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#55bb55" title "bitmapscan (17, optimal)", \
     "data/ryzen_sata/linear_10-seqscan-off-16-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)", \
     "data/ryzen_sata/linear_10-seqscan-17-off-16-4GB-yes.data"     using 1:3 with points pt 6 ps 0.75 lc rgb "#5555cc" title "seqscan (17, optimal)"
set xrange[0.00791999366400507:100]
set yrange[0.01:50266.949]
set title 'linear\_10 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear_10-indexscan-off-128-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear_10-indexscan-on-128-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_sata/linear_10-indexscan-17-off-128-4GB-no.data"    using 1:3 with points pt 6 ps 0.75 lc rgb "#ffeeee" title "indexscan (17)", \
     "data/ryzen_sata/linear_10-bitmapscan-off-128-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_sata/linear_10-bitmapscan-17-off-128-4GB-no.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cceeee" title "bitmapscan (17)", \
     "data/ryzen_sata/linear_10-seqscan-off-128-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_sata/linear_10-seqscan-17-off-128-4GB-no.data"      using 1:3 with points pt 6 ps 0.75 lc rgb "#ccdddd" title "seqscan (17)", \
     "data/ryzen_sata/linear_10-smoothscan-off-128-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_sata/linear_10-indexscan-off-128-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear_10-indexscan-17-off-128-4GB-yes.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cc5555" title "indexscan (17, optimal)", \
     "data/ryzen_sata/linear_10-indexscan-on-128-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_sata/linear_10-bitmapscan-off-128-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear_10-bitmapscan-17-off-128-4GB-yes.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#55bb55" title "bitmapscan (17, optimal)", \
     "data/ryzen_sata/linear_10-seqscan-off-128-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)", \
     "data/ryzen_sata/linear_10-seqscan-17-off-128-4GB-yes.data"     using 1:3 with points pt 6 ps 0.75 lc rgb "#5555cc" title "seqscan (17, optimal)"
set xrange[0.0100799919360065:100]
set yrange[0.01:53168.309]
set title 'linear\_1 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear_1-indexscan-off-0-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear_1-indexscan-on-0-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_sata/linear_1-indexscan-17-off-0-4GB-no.data"    using 1:3 with points pt 6 ps 0.75 lc rgb "#ffeeee" title "indexscan (17)", \
     "data/ryzen_sata/linear_1-bitmapscan-off-0-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_sata/linear_1-bitmapscan-17-off-0-4GB-no.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cceeee" title "bitmapscan (17)", \
     "data/ryzen_sata/linear_1-seqscan-off-0-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_sata/linear_1-seqscan-17-off-0-4GB-no.data"      using 1:3 with points pt 6 ps 0.75 lc rgb "#ccdddd" title "seqscan (17)", \
     "data/ryzen_sata/linear_1-smoothscan-off-0-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_sata/linear_1-indexscan-off-0-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear_1-indexscan-17-off-0-4GB-yes.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cc5555" title "indexscan (17, optimal)", \
     "data/ryzen_sata/linear_1-indexscan-on-0-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_sata/linear_1-bitmapscan-off-0-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear_1-bitmapscan-17-off-0-4GB-yes.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#55bb55" title "bitmapscan (17, optimal)", \
     "data/ryzen_sata/linear_1-seqscan-off-0-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)", \
     "data/ryzen_sata/linear_1-seqscan-17-off-0-4GB-yes.data"     using 1:3 with points pt 6 ps 0.75 lc rgb "#5555cc" title "seqscan (17, optimal)"
set xrange[0.0100799919360065:100]
set yrange[0.01:53168.309]
set title 'linear\_1 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear_1-indexscan-off-16-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear_1-indexscan-on-16-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_sata/linear_1-indexscan-17-off-16-4GB-no.data"    using 1:3 with points pt 6 ps 0.75 lc rgb "#ffeeee" title "indexscan (17)", \
     "data/ryzen_sata/linear_1-bitmapscan-off-16-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_sata/linear_1-bitmapscan-17-off-16-4GB-no.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cceeee" title "bitmapscan (17)", \
     "data/ryzen_sata/linear_1-seqscan-off-16-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_sata/linear_1-seqscan-17-off-16-4GB-no.data"      using 1:3 with points pt 6 ps 0.75 lc rgb "#ccdddd" title "seqscan (17)", \
     "data/ryzen_sata/linear_1-smoothscan-off-16-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_sata/linear_1-indexscan-off-16-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear_1-indexscan-17-off-16-4GB-yes.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cc5555" title "indexscan (17, optimal)", \
     "data/ryzen_sata/linear_1-indexscan-on-16-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_sata/linear_1-bitmapscan-off-16-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear_1-bitmapscan-17-off-16-4GB-yes.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#55bb55" title "bitmapscan (17, optimal)", \
     "data/ryzen_sata/linear_1-seqscan-off-16-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)", \
     "data/ryzen_sata/linear_1-seqscan-17-off-16-4GB-yes.data"     using 1:3 with points pt 6 ps 0.75 lc rgb "#5555cc" title "seqscan (17, optimal)"
set xrange[0.0100799919360065:100]
set yrange[0.01:53168.309]
set title 'linear\_1 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear_1-indexscan-off-128-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear_1-indexscan-on-128-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_sata/linear_1-indexscan-17-off-128-4GB-no.data"    using 1:3 with points pt 6 ps 0.75 lc rgb "#ffeeee" title "indexscan (17)", \
     "data/ryzen_sata/linear_1-bitmapscan-off-128-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_sata/linear_1-bitmapscan-17-off-128-4GB-no.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cceeee" title "bitmapscan (17)", \
     "data/ryzen_sata/linear_1-seqscan-off-128-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_sata/linear_1-seqscan-17-off-128-4GB-no.data"      using 1:3 with points pt 6 ps 0.75 lc rgb "#ccdddd" title "seqscan (17)", \
     "data/ryzen_sata/linear_1-smoothscan-off-128-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_sata/linear_1-indexscan-off-128-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear_1-indexscan-17-off-128-4GB-yes.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cc5555" title "indexscan (17, optimal)", \
     "data/ryzen_sata/linear_1-indexscan-on-128-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_sata/linear_1-bitmapscan-off-128-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear_1-bitmapscan-17-off-128-4GB-yes.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#55bb55" title "bitmapscan (17, optimal)", \
     "data/ryzen_sata/linear_1-seqscan-off-128-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)", \
     "data/ryzen_sata/linear_1-seqscan-17-off-128-4GB-yes.data"     using 1:3 with points pt 6 ps 0.75 lc rgb "#5555cc" title "seqscan (17, optimal)"
set xrange[0.00107999913600069:100]
set yrange[0.01:22223.929]
set title 'linear / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear-indexscan-off-0-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear-indexscan-on-0-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_sata/linear-indexscan-17-off-0-4GB-no.data"    using 1:3 with points pt 6 ps 0.75 lc rgb "#ffeeee" title "indexscan (17)", \
     "data/ryzen_sata/linear-bitmapscan-off-0-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_sata/linear-bitmapscan-17-off-0-4GB-no.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cceeee" title "bitmapscan (17)", \
     "data/ryzen_sata/linear-seqscan-off-0-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_sata/linear-seqscan-17-off-0-4GB-no.data"      using 1:3 with points pt 6 ps 0.75 lc rgb "#ccdddd" title "seqscan (17)", \
     "data/ryzen_sata/linear-smoothscan-off-0-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_sata/linear-indexscan-off-0-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear-indexscan-17-off-0-4GB-yes.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cc5555" title "indexscan (17, optimal)", \
     "data/ryzen_sata/linear-indexscan-on-0-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_sata/linear-bitmapscan-off-0-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear-bitmapscan-17-off-0-4GB-yes.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#55bb55" title "bitmapscan (17, optimal)", \
     "data/ryzen_sata/linear-seqscan-off-0-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)", \
     "data/ryzen_sata/linear-seqscan-17-off-0-4GB-yes.data"     using 1:3 with points pt 6 ps 0.75 lc rgb "#5555cc" title "seqscan (17, optimal)"
set xrange[0.00107999913600069:100]
set yrange[0.01:22223.929]
set title 'linear / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear-indexscan-off-16-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear-indexscan-on-16-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_sata/linear-indexscan-17-off-16-4GB-no.data"    using 1:3 with points pt 6 ps 0.75 lc rgb "#ffeeee" title "indexscan (17)", \
     "data/ryzen_sata/linear-bitmapscan-off-16-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_sata/linear-bitmapscan-17-off-16-4GB-no.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cceeee" title "bitmapscan (17)", \
     "data/ryzen_sata/linear-seqscan-off-16-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_sata/linear-seqscan-17-off-16-4GB-no.data"      using 1:3 with points pt 6 ps 0.75 lc rgb "#ccdddd" title "seqscan (17)", \
     "data/ryzen_sata/linear-smoothscan-off-16-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_sata/linear-indexscan-off-16-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear-indexscan-17-off-16-4GB-yes.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cc5555" title "indexscan (17, optimal)", \
     "data/ryzen_sata/linear-indexscan-on-16-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_sata/linear-bitmapscan-off-16-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear-bitmapscan-17-off-16-4GB-yes.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#55bb55" title "bitmapscan (17, optimal)", \
     "data/ryzen_sata/linear-seqscan-off-16-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)", \
     "data/ryzen_sata/linear-seqscan-17-off-16-4GB-yes.data"     using 1:3 with points pt 6 ps 0.75 lc rgb "#5555cc" title "seqscan (17, optimal)"
set xrange[0.00107999913600069:100]
set yrange[0.01:22223.929]
set title 'linear / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/linear-indexscan-off-128-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/linear-indexscan-on-128-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_sata/linear-indexscan-17-off-128-4GB-no.data"    using 1:3 with points pt 6 ps 0.75 lc rgb "#ffeeee" title "indexscan (17)", \
     "data/ryzen_sata/linear-bitmapscan-off-128-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_sata/linear-bitmapscan-17-off-128-4GB-no.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cceeee" title "bitmapscan (17)", \
     "data/ryzen_sata/linear-seqscan-off-128-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_sata/linear-seqscan-17-off-128-4GB-no.data"      using 1:3 with points pt 6 ps 0.75 lc rgb "#ccdddd" title "seqscan (17)", \
     "data/ryzen_sata/linear-smoothscan-off-128-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_sata/linear-indexscan-off-128-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/linear-indexscan-17-off-128-4GB-yes.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cc5555" title "indexscan (17, optimal)", \
     "data/ryzen_sata/linear-indexscan-on-128-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_sata/linear-bitmapscan-off-128-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/linear-bitmapscan-17-off-128-4GB-yes.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#55bb55" title "bitmapscan (17, optimal)", \
     "data/ryzen_sata/linear-seqscan-off-128-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)", \
     "data/ryzen_sata/linear-seqscan-17-off-128-4GB-yes.data"     using 1:3 with points pt 6 ps 0.75 lc rgb "#5555cc" title "seqscan (17, optimal)"
set xrange[0.00701999438400449:100]
set yrange[0.01:37944.569]
set title 'cyclic\_25 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic_25-indexscan-off-0-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic_25-indexscan-on-0-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_sata/cyclic_25-indexscan-17-off-0-4GB-no.data"    using 1:3 with points pt 6 ps 0.75 lc rgb "#ffeeee" title "indexscan (17)", \
     "data/ryzen_sata/cyclic_25-bitmapscan-off-0-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_sata/cyclic_25-bitmapscan-17-off-0-4GB-no.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cceeee" title "bitmapscan (17)", \
     "data/ryzen_sata/cyclic_25-seqscan-off-0-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_sata/cyclic_25-seqscan-17-off-0-4GB-no.data"      using 1:3 with points pt 6 ps 0.75 lc rgb "#ccdddd" title "seqscan (17)", \
     "data/ryzen_sata/cyclic_25-smoothscan-off-0-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_sata/cyclic_25-indexscan-off-0-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic_25-indexscan-17-off-0-4GB-yes.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cc5555" title "indexscan (17, optimal)", \
     "data/ryzen_sata/cyclic_25-indexscan-on-0-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_sata/cyclic_25-bitmapscan-off-0-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic_25-bitmapscan-17-off-0-4GB-yes.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#55bb55" title "bitmapscan (17, optimal)", \
     "data/ryzen_sata/cyclic_25-seqscan-off-0-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)", \
     "data/ryzen_sata/cyclic_25-seqscan-17-off-0-4GB-yes.data"     using 1:3 with points pt 6 ps 0.75 lc rgb "#5555cc" title "seqscan (17, optimal)"
set xrange[0.00701999438400449:100]
set yrange[0.01:37944.569]
set title 'cyclic\_25 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic_25-indexscan-off-16-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic_25-indexscan-on-16-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_sata/cyclic_25-indexscan-17-off-16-4GB-no.data"    using 1:3 with points pt 6 ps 0.75 lc rgb "#ffeeee" title "indexscan (17)", \
     "data/ryzen_sata/cyclic_25-bitmapscan-off-16-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_sata/cyclic_25-bitmapscan-17-off-16-4GB-no.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cceeee" title "bitmapscan (17)", \
     "data/ryzen_sata/cyclic_25-seqscan-off-16-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_sata/cyclic_25-seqscan-17-off-16-4GB-no.data"      using 1:3 with points pt 6 ps 0.75 lc rgb "#ccdddd" title "seqscan (17)", \
     "data/ryzen_sata/cyclic_25-smoothscan-off-16-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_sata/cyclic_25-indexscan-off-16-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic_25-indexscan-17-off-16-4GB-yes.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cc5555" title "indexscan (17, optimal)", \
     "data/ryzen_sata/cyclic_25-indexscan-on-16-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_sata/cyclic_25-bitmapscan-off-16-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic_25-bitmapscan-17-off-16-4GB-yes.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#55bb55" title "bitmapscan (17, optimal)", \
     "data/ryzen_sata/cyclic_25-seqscan-off-16-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)", \
     "data/ryzen_sata/cyclic_25-seqscan-17-off-16-4GB-yes.data"     using 1:3 with points pt 6 ps 0.75 lc rgb "#5555cc" title "seqscan (17, optimal)"
set xrange[0.00701999438400449:100]
set yrange[0.01:37944.569]
set title 'cyclic\_25 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic_25-indexscan-off-128-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic_25-indexscan-on-128-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_sata/cyclic_25-indexscan-17-off-128-4GB-no.data"    using 1:3 with points pt 6 ps 0.75 lc rgb "#ffeeee" title "indexscan (17)", \
     "data/ryzen_sata/cyclic_25-bitmapscan-off-128-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_sata/cyclic_25-bitmapscan-17-off-128-4GB-no.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cceeee" title "bitmapscan (17)", \
     "data/ryzen_sata/cyclic_25-seqscan-off-128-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_sata/cyclic_25-seqscan-17-off-128-4GB-no.data"      using 1:3 with points pt 6 ps 0.75 lc rgb "#ccdddd" title "seqscan (17)", \
     "data/ryzen_sata/cyclic_25-smoothscan-off-128-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_sata/cyclic_25-indexscan-off-128-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic_25-indexscan-17-off-128-4GB-yes.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cc5555" title "indexscan (17, optimal)", \
     "data/ryzen_sata/cyclic_25-indexscan-on-128-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_sata/cyclic_25-bitmapscan-off-128-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic_25-bitmapscan-17-off-128-4GB-yes.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#55bb55" title "bitmapscan (17, optimal)", \
     "data/ryzen_sata/cyclic_25-seqscan-off-128-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)", \
     "data/ryzen_sata/cyclic_25-seqscan-17-off-128-4GB-yes.data"     using 1:3 with points pt 6 ps 0.75 lc rgb "#5555cc" title "seqscan (17, optimal)"
set xrange[0.00737999409600472:100]
set yrange[0.01:24722.322]
set title 'cyclic\_10 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic_10-indexscan-off-0-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic_10-indexscan-on-0-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_sata/cyclic_10-indexscan-17-off-0-4GB-no.data"    using 1:3 with points pt 6 ps 0.75 lc rgb "#ffeeee" title "indexscan (17)", \
     "data/ryzen_sata/cyclic_10-bitmapscan-off-0-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_sata/cyclic_10-bitmapscan-17-off-0-4GB-no.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cceeee" title "bitmapscan (17)", \
     "data/ryzen_sata/cyclic_10-seqscan-off-0-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_sata/cyclic_10-seqscan-17-off-0-4GB-no.data"      using 1:3 with points pt 6 ps 0.75 lc rgb "#ccdddd" title "seqscan (17)", \
     "data/ryzen_sata/cyclic_10-smoothscan-off-0-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_sata/cyclic_10-indexscan-off-0-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic_10-indexscan-17-off-0-4GB-yes.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cc5555" title "indexscan (17, optimal)", \
     "data/ryzen_sata/cyclic_10-indexscan-on-0-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_sata/cyclic_10-bitmapscan-off-0-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic_10-bitmapscan-17-off-0-4GB-yes.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#55bb55" title "bitmapscan (17, optimal)", \
     "data/ryzen_sata/cyclic_10-seqscan-off-0-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)", \
     "data/ryzen_sata/cyclic_10-seqscan-17-off-0-4GB-yes.data"     using 1:3 with points pt 6 ps 0.75 lc rgb "#5555cc" title "seqscan (17, optimal)"
set xrange[0.00737999409600472:100]
set yrange[0.01:24722.322]
set title 'cyclic\_10 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic_10-indexscan-off-16-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic_10-indexscan-on-16-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_sata/cyclic_10-indexscan-17-off-16-4GB-no.data"    using 1:3 with points pt 6 ps 0.75 lc rgb "#ffeeee" title "indexscan (17)", \
     "data/ryzen_sata/cyclic_10-bitmapscan-off-16-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_sata/cyclic_10-bitmapscan-17-off-16-4GB-no.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cceeee" title "bitmapscan (17)", \
     "data/ryzen_sata/cyclic_10-seqscan-off-16-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_sata/cyclic_10-seqscan-17-off-16-4GB-no.data"      using 1:3 with points pt 6 ps 0.75 lc rgb "#ccdddd" title "seqscan (17)", \
     "data/ryzen_sata/cyclic_10-smoothscan-off-16-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_sata/cyclic_10-indexscan-off-16-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic_10-indexscan-17-off-16-4GB-yes.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cc5555" title "indexscan (17, optimal)", \
     "data/ryzen_sata/cyclic_10-indexscan-on-16-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_sata/cyclic_10-bitmapscan-off-16-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic_10-bitmapscan-17-off-16-4GB-yes.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#55bb55" title "bitmapscan (17, optimal)", \
     "data/ryzen_sata/cyclic_10-seqscan-off-16-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)", \
     "data/ryzen_sata/cyclic_10-seqscan-17-off-16-4GB-yes.data"     using 1:3 with points pt 6 ps 0.75 lc rgb "#5555cc" title "seqscan (17, optimal)"
set xrange[0.00737999409600472:100]
set yrange[0.01:24722.322]
set title 'cyclic\_10 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic_10-indexscan-off-128-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic_10-indexscan-on-128-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_sata/cyclic_10-indexscan-17-off-128-4GB-no.data"    using 1:3 with points pt 6 ps 0.75 lc rgb "#ffeeee" title "indexscan (17)", \
     "data/ryzen_sata/cyclic_10-bitmapscan-off-128-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_sata/cyclic_10-bitmapscan-17-off-128-4GB-no.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cceeee" title "bitmapscan (17)", \
     "data/ryzen_sata/cyclic_10-seqscan-off-128-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_sata/cyclic_10-seqscan-17-off-128-4GB-no.data"      using 1:3 with points pt 6 ps 0.75 lc rgb "#ccdddd" title "seqscan (17)", \
     "data/ryzen_sata/cyclic_10-smoothscan-off-128-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_sata/cyclic_10-indexscan-off-128-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic_10-indexscan-17-off-128-4GB-yes.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cc5555" title "indexscan (17, optimal)", \
     "data/ryzen_sata/cyclic_10-indexscan-on-128-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_sata/cyclic_10-bitmapscan-off-128-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic_10-bitmapscan-17-off-128-4GB-yes.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#55bb55" title "bitmapscan (17, optimal)", \
     "data/ryzen_sata/cyclic_10-seqscan-off-128-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)", \
     "data/ryzen_sata/cyclic_10-seqscan-17-off-128-4GB-yes.data"     using 1:3 with points pt 6 ps 0.75 lc rgb "#5555cc" title "seqscan (17, optimal)"
set xrange[0.00845999323200541:100]
set yrange[0.01:11364.25]
set title 'cyclic\_1 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic_1-indexscan-off-0-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic_1-indexscan-on-0-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_sata/cyclic_1-indexscan-17-off-0-4GB-no.data"    using 1:3 with points pt 6 ps 0.75 lc rgb "#ffeeee" title "indexscan (17)", \
     "data/ryzen_sata/cyclic_1-bitmapscan-off-0-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_sata/cyclic_1-bitmapscan-17-off-0-4GB-no.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cceeee" title "bitmapscan (17)", \
     "data/ryzen_sata/cyclic_1-seqscan-off-0-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_sata/cyclic_1-seqscan-17-off-0-4GB-no.data"      using 1:3 with points pt 6 ps 0.75 lc rgb "#ccdddd" title "seqscan (17)", \
     "data/ryzen_sata/cyclic_1-smoothscan-off-0-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_sata/cyclic_1-indexscan-off-0-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic_1-indexscan-17-off-0-4GB-yes.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cc5555" title "indexscan (17, optimal)", \
     "data/ryzen_sata/cyclic_1-indexscan-on-0-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_sata/cyclic_1-bitmapscan-off-0-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic_1-bitmapscan-17-off-0-4GB-yes.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#55bb55" title "bitmapscan (17, optimal)", \
     "data/ryzen_sata/cyclic_1-seqscan-off-0-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)", \
     "data/ryzen_sata/cyclic_1-seqscan-17-off-0-4GB-yes.data"     using 1:3 with points pt 6 ps 0.75 lc rgb "#5555cc" title "seqscan (17, optimal)"
set xrange[0.00845999323200541:100]
set yrange[0.01:11364.25]
set title 'cyclic\_1 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic_1-indexscan-off-16-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic_1-indexscan-on-16-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_sata/cyclic_1-indexscan-17-off-16-4GB-no.data"    using 1:3 with points pt 6 ps 0.75 lc rgb "#ffeeee" title "indexscan (17)", \
     "data/ryzen_sata/cyclic_1-bitmapscan-off-16-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_sata/cyclic_1-bitmapscan-17-off-16-4GB-no.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cceeee" title "bitmapscan (17)", \
     "data/ryzen_sata/cyclic_1-seqscan-off-16-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_sata/cyclic_1-seqscan-17-off-16-4GB-no.data"      using 1:3 with points pt 6 ps 0.75 lc rgb "#ccdddd" title "seqscan (17)", \
     "data/ryzen_sata/cyclic_1-smoothscan-off-16-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_sata/cyclic_1-indexscan-off-16-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic_1-indexscan-17-off-16-4GB-yes.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cc5555" title "indexscan (17, optimal)", \
     "data/ryzen_sata/cyclic_1-indexscan-on-16-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_sata/cyclic_1-bitmapscan-off-16-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic_1-bitmapscan-17-off-16-4GB-yes.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#55bb55" title "bitmapscan (17, optimal)", \
     "data/ryzen_sata/cyclic_1-seqscan-off-16-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)", \
     "data/ryzen_sata/cyclic_1-seqscan-17-off-16-4GB-yes.data"     using 1:3 with points pt 6 ps 0.75 lc rgb "#5555cc" title "seqscan (17, optimal)"
set xrange[0.00845999323200541:100]
set yrange[0.01:11364.25]
set title 'cyclic\_1 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic_1-indexscan-off-128-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic_1-indexscan-on-128-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_sata/cyclic_1-indexscan-17-off-128-4GB-no.data"    using 1:3 with points pt 6 ps 0.75 lc rgb "#ffeeee" title "indexscan (17)", \
     "data/ryzen_sata/cyclic_1-bitmapscan-off-128-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_sata/cyclic_1-bitmapscan-17-off-128-4GB-no.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cceeee" title "bitmapscan (17)", \
     "data/ryzen_sata/cyclic_1-seqscan-off-128-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_sata/cyclic_1-seqscan-17-off-128-4GB-no.data"      using 1:3 with points pt 6 ps 0.75 lc rgb "#ccdddd" title "seqscan (17)", \
     "data/ryzen_sata/cyclic_1-smoothscan-off-128-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_sata/cyclic_1-indexscan-off-128-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic_1-indexscan-17-off-128-4GB-yes.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cc5555" title "indexscan (17, optimal)", \
     "data/ryzen_sata/cyclic_1-indexscan-on-128-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_sata/cyclic_1-bitmapscan-off-128-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic_1-bitmapscan-17-off-128-4GB-yes.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#55bb55" title "bitmapscan (17, optimal)", \
     "data/ryzen_sata/cyclic_1-seqscan-off-128-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)", \
     "data/ryzen_sata/cyclic_1-seqscan-17-off-128-4GB-yes.data"     using 1:3 with points pt 6 ps 0.75 lc rgb "#5555cc" title "seqscan (17, optimal)"
set xrange[0.0179999856000115:100]
set yrange[0.01:37159.106]
set title 'cyclic / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic-indexscan-off-0-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic-indexscan-on-0-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_sata/cyclic-indexscan-17-off-0-4GB-no.data"    using 1:3 with points pt 6 ps 0.75 lc rgb "#ffeeee" title "indexscan (17)", \
     "data/ryzen_sata/cyclic-bitmapscan-off-0-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_sata/cyclic-bitmapscan-17-off-0-4GB-no.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cceeee" title "bitmapscan (17)", \
     "data/ryzen_sata/cyclic-seqscan-off-0-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_sata/cyclic-seqscan-17-off-0-4GB-no.data"      using 1:3 with points pt 6 ps 0.75 lc rgb "#ccdddd" title "seqscan (17)", \
     "data/ryzen_sata/cyclic-smoothscan-off-0-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_sata/cyclic-indexscan-off-0-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic-indexscan-17-off-0-4GB-yes.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cc5555" title "indexscan (17, optimal)", \
     "data/ryzen_sata/cyclic-indexscan-on-0-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_sata/cyclic-bitmapscan-off-0-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic-bitmapscan-17-off-0-4GB-yes.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#55bb55" title "bitmapscan (17, optimal)", \
     "data/ryzen_sata/cyclic-seqscan-off-0-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)", \
     "data/ryzen_sata/cyclic-seqscan-17-off-0-4GB-yes.data"     using 1:3 with points pt 6 ps 0.75 lc rgb "#5555cc" title "seqscan (17, optimal)"
set xrange[0.0179999856000115:100]
set yrange[0.01:37159.106]
set title 'cyclic / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic-indexscan-off-16-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic-indexscan-on-16-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_sata/cyclic-indexscan-17-off-16-4GB-no.data"    using 1:3 with points pt 6 ps 0.75 lc rgb "#ffeeee" title "indexscan (17)", \
     "data/ryzen_sata/cyclic-bitmapscan-off-16-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_sata/cyclic-bitmapscan-17-off-16-4GB-no.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cceeee" title "bitmapscan (17)", \
     "data/ryzen_sata/cyclic-seqscan-off-16-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_sata/cyclic-seqscan-17-off-16-4GB-no.data"      using 1:3 with points pt 6 ps 0.75 lc rgb "#ccdddd" title "seqscan (17)", \
     "data/ryzen_sata/cyclic-smoothscan-off-16-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_sata/cyclic-indexscan-off-16-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic-indexscan-17-off-16-4GB-yes.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cc5555" title "indexscan (17, optimal)", \
     "data/ryzen_sata/cyclic-indexscan-on-16-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_sata/cyclic-bitmapscan-off-16-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic-bitmapscan-17-off-16-4GB-yes.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#55bb55" title "bitmapscan (17, optimal)", \
     "data/ryzen_sata/cyclic-seqscan-off-16-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)", \
     "data/ryzen_sata/cyclic-seqscan-17-off-16-4GB-yes.data"     using 1:3 with points pt 6 ps 0.75 lc rgb "#5555cc" title "seqscan (17, optimal)"
set xrange[0.0179999856000115:100]
set yrange[0.01:37159.106]
set title 'cyclic / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_sata/cyclic-indexscan-off-128-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_sata/cyclic-indexscan-on-128-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_sata/cyclic-indexscan-17-off-128-4GB-no.data"    using 1:3 with points pt 6 ps 0.75 lc rgb "#ffeeee" title "indexscan (17)", \
     "data/ryzen_sata/cyclic-bitmapscan-off-128-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_sata/cyclic-bitmapscan-17-off-128-4GB-no.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cceeee" title "bitmapscan (17)", \
     "data/ryzen_sata/cyclic-seqscan-off-128-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_sata/cyclic-seqscan-17-off-128-4GB-no.data"      using 1:3 with points pt 6 ps 0.75 lc rgb "#ccdddd" title "seqscan (17)", \
     "data/ryzen_sata/cyclic-smoothscan-off-128-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_sata/cyclic-indexscan-off-128-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_sata/cyclic-indexscan-17-off-128-4GB-yes.data"   using 1:3 with points pt 6 ps 0.75 lc rgb "#cc5555" title "indexscan (17, optimal)", \
     "data/ryzen_sata/cyclic-indexscan-on-128-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_sata/cyclic-bitmapscan-off-128-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_sata/cyclic-bitmapscan-17-off-128-4GB-yes.data"  using 1:3 with points pt 6 ps 0.75 lc rgb "#55bb55" title "bitmapscan (17, optimal)", \
     "data/ryzen_sata/cyclic-seqscan-off-128-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)", \
     "data/ryzen_sata/cyclic-seqscan-17-off-128-4GB-yes.data"     using 1:3 with points pt 6 ps 0.75 lc rgb "#5555cc" title "seqscan (17, optimal)"
