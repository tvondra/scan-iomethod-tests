set terminal pdfcairo size 16,34 enhanced font 'Verdana,12'
set output 'ryzen_nvme-rows-cold-32GB-optimal-log.pdf'

set log x
set log y
set yrange [0.01:]
set key bottom right

set xlabel 'selectivity'

set multiplot layout 9,3 rowsfirst
set xrange[0.000799999360000512:100]
set yrange[0.01:22872.08]
set title 'uniform / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/uniform-indexscan-off-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/uniform-indexscan-on-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/uniform-bitmapscan-off-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/uniform-seqscan-off-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/uniform-smoothscan-off-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/uniform-indexscan-off-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/uniform-indexscan-on-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/uniform-bitmapscan-off-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/uniform-seqscan-off-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.000799999360000512:100]
set yrange[0.01:22872.08]
set title 'uniform / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/uniform-indexscan-off-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/uniform-indexscan-on-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/uniform-bitmapscan-off-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/uniform-seqscan-off-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/uniform-smoothscan-off-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/uniform-indexscan-off-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/uniform-indexscan-on-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/uniform-bitmapscan-off-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/uniform-seqscan-off-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.000799999360000512:100]
set yrange[0.01:22872.08]
set title 'uniform / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/uniform-indexscan-off-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/uniform-indexscan-on-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/uniform-bitmapscan-off-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/uniform-seqscan-off-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/uniform-smoothscan-off-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/uniform-indexscan-off-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/uniform-indexscan-on-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/uniform-bitmapscan-off-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/uniform-seqscan-off-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.000399999680000256:100]
set yrange[0.01:20611.148]
set title 'linear\_25 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear_25-indexscan-off-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear_25-indexscan-on-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/linear_25-bitmapscan-off-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/linear_25-seqscan-off-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/linear_25-smoothscan-off-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear_25-indexscan-off-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear_25-indexscan-on-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/linear_25-bitmapscan-off-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear_25-seqscan-off-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.000399999680000256:100]
set yrange[0.01:20611.148]
set title 'linear\_25 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear_25-indexscan-off-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear_25-indexscan-on-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/linear_25-bitmapscan-off-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/linear_25-seqscan-off-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/linear_25-smoothscan-off-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear_25-indexscan-off-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear_25-indexscan-on-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/linear_25-bitmapscan-off-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear_25-seqscan-off-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.000399999680000256:100]
set yrange[0.01:20611.148]
set title 'linear\_25 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear_25-indexscan-off-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear_25-indexscan-on-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/linear_25-bitmapscan-off-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/linear_25-seqscan-off-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/linear_25-smoothscan-off-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear_25-indexscan-off-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear_25-indexscan-on-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/linear_25-bitmapscan-off-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear_25-seqscan-off-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.000329999736000211:100]
set yrange[0.01:22309.395]
set title 'linear\_10 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear_10-indexscan-off-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear_10-indexscan-on-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/linear_10-bitmapscan-off-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/linear_10-seqscan-off-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/linear_10-smoothscan-off-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear_10-indexscan-off-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear_10-indexscan-on-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/linear_10-bitmapscan-off-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear_10-seqscan-off-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.000329999736000211:100]
set yrange[0.01:22309.395]
set title 'linear\_10 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear_10-indexscan-off-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear_10-indexscan-on-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/linear_10-bitmapscan-off-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/linear_10-seqscan-off-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/linear_10-smoothscan-off-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear_10-indexscan-off-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear_10-indexscan-on-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/linear_10-bitmapscan-off-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear_10-seqscan-off-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.000329999736000211:100]
set yrange[0.01:22309.395]
set title 'linear\_10 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear_10-indexscan-off-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear_10-indexscan-on-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/linear_10-bitmapscan-off-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/linear_10-seqscan-off-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/linear_10-smoothscan-off-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear_10-indexscan-off-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear_10-indexscan-on-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/linear_10-bitmapscan-off-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear_10-seqscan-off-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.000579999536000371:100]
set yrange[0.01:22813.413]
set title 'linear\_1 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear_1-indexscan-off-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear_1-indexscan-on-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/linear_1-bitmapscan-off-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/linear_1-seqscan-off-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/linear_1-smoothscan-off-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear_1-indexscan-off-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear_1-indexscan-on-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/linear_1-bitmapscan-off-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear_1-seqscan-off-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.000579999536000371:100]
set yrange[0.01:22813.413]
set title 'linear\_1 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear_1-indexscan-off-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear_1-indexscan-on-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/linear_1-bitmapscan-off-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/linear_1-seqscan-off-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/linear_1-smoothscan-off-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear_1-indexscan-off-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear_1-indexscan-on-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/linear_1-bitmapscan-off-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear_1-seqscan-off-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.000579999536000371:100]
set yrange[0.01:22813.413]
set title 'linear\_1 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear_1-indexscan-off-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear_1-indexscan-on-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/linear_1-bitmapscan-off-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/linear_1-seqscan-off-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/linear_1-smoothscan-off-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear_1-indexscan-off-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear_1-indexscan-on-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/linear_1-bitmapscan-off-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear_1-seqscan-off-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.00099999920000064:100]
set yrange[0.01:8818.598]
set title 'linear / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear-indexscan-off-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear-indexscan-on-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/linear-bitmapscan-off-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/linear-seqscan-off-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/linear-smoothscan-off-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear-indexscan-off-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear-indexscan-on-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/linear-bitmapscan-off-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear-seqscan-off-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.00099999920000064:100]
set yrange[0.01:8818.598]
set title 'linear / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear-indexscan-off-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear-indexscan-on-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/linear-bitmapscan-off-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/linear-seqscan-off-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/linear-smoothscan-off-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear-indexscan-off-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear-indexscan-on-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/linear-bitmapscan-off-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear-seqscan-off-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.00099999920000064:100]
set yrange[0.01:8818.598]
set title 'linear / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear-indexscan-off-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear-indexscan-on-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/linear-bitmapscan-off-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/linear-seqscan-off-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/linear-smoothscan-off-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear-indexscan-off-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear-indexscan-on-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/linear-bitmapscan-off-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear-seqscan-off-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.000369999704000237:100]
set yrange[0.01:16716.868]
set title 'cyclic\_25 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic_25-indexscan-off-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic_25-indexscan-on-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/cyclic_25-bitmapscan-off-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic_25-seqscan-off-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/cyclic_25-smoothscan-off-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic_25-indexscan-off-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic_25-indexscan-on-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/cyclic_25-bitmapscan-off-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic_25-seqscan-off-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.000369999704000237:100]
set yrange[0.01:16716.868]
set title 'cyclic\_25 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic_25-indexscan-off-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic_25-indexscan-on-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/cyclic_25-bitmapscan-off-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic_25-seqscan-off-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/cyclic_25-smoothscan-off-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic_25-indexscan-off-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic_25-indexscan-on-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/cyclic_25-bitmapscan-off-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic_25-seqscan-off-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.000369999704000237:100]
set yrange[0.01:16716.868]
set title 'cyclic\_25 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic_25-indexscan-off-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic_25-indexscan-on-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/cyclic_25-bitmapscan-off-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic_25-seqscan-off-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/cyclic_25-smoothscan-off-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic_25-indexscan-off-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic_25-indexscan-on-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/cyclic_25-bitmapscan-off-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic_25-seqscan-off-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.000469999624000301:100]
set yrange[0.01:11991.474]
set title 'cyclic\_10 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic_10-indexscan-off-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic_10-indexscan-on-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/cyclic_10-bitmapscan-off-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic_10-seqscan-off-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/cyclic_10-smoothscan-off-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic_10-indexscan-off-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic_10-indexscan-on-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/cyclic_10-bitmapscan-off-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic_10-seqscan-off-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.000469999624000301:100]
set yrange[0.01:11991.474]
set title 'cyclic\_10 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic_10-indexscan-off-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic_10-indexscan-on-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/cyclic_10-bitmapscan-off-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic_10-seqscan-off-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/cyclic_10-smoothscan-off-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic_10-indexscan-off-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic_10-indexscan-on-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/cyclic_10-bitmapscan-off-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic_10-seqscan-off-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.000469999624000301:100]
set yrange[0.01:11991.474]
set title 'cyclic\_10 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic_10-indexscan-off-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic_10-indexscan-on-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/cyclic_10-bitmapscan-off-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic_10-seqscan-off-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/cyclic_10-smoothscan-off-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic_10-indexscan-off-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic_10-indexscan-on-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/cyclic_10-bitmapscan-off-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic_10-seqscan-off-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.000579999536000371:100]
set yrange[0.01:9155.852]
set title 'cyclic\_1 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic_1-indexscan-off-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic_1-indexscan-on-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/cyclic_1-bitmapscan-off-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic_1-seqscan-off-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/cyclic_1-smoothscan-off-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic_1-indexscan-off-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic_1-indexscan-on-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/cyclic_1-bitmapscan-off-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic_1-seqscan-off-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.000579999536000371:100]
set yrange[0.01:9155.852]
set title 'cyclic\_1 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic_1-indexscan-off-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic_1-indexscan-on-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/cyclic_1-bitmapscan-off-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic_1-seqscan-off-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/cyclic_1-smoothscan-off-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic_1-indexscan-off-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic_1-indexscan-on-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/cyclic_1-bitmapscan-off-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic_1-seqscan-off-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.000579999536000371:100]
set yrange[0.01:9155.852]
set title 'cyclic\_1 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic_1-indexscan-off-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic_1-indexscan-on-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/cyclic_1-bitmapscan-off-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic_1-seqscan-off-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/cyclic_1-smoothscan-off-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic_1-indexscan-off-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic_1-indexscan-on-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/cyclic_1-bitmapscan-off-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic_1-seqscan-off-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.00099999920000064:100]
set yrange[0.01:15744.598]
set title 'cyclic / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic-indexscan-off-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic-indexscan-on-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/cyclic-bitmapscan-off-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic-seqscan-off-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/cyclic-smoothscan-off-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic-indexscan-off-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic-indexscan-on-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/cyclic-bitmapscan-off-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic-seqscan-off-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.00099999920000064:100]
set yrange[0.01:15744.598]
set title 'cyclic / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic-indexscan-off-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic-indexscan-on-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/cyclic-bitmapscan-off-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic-seqscan-off-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/cyclic-smoothscan-off-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic-indexscan-off-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic-indexscan-on-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/cyclic-bitmapscan-off-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic-seqscan-off-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.00099999920000064:100]
set yrange[0.01:15744.598]
set title 'cyclic / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic-indexscan-off-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic-indexscan-on-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/cyclic-bitmapscan-off-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic-seqscan-off-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/cyclic-smoothscan-off-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic-indexscan-off-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic-indexscan-on-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/cyclic-bitmapscan-off-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic-seqscan-off-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
