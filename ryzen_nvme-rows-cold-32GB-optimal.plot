set terminal pdfcairo size 16,40 enhanced font 'Verdana,12'
set output 'ryzen_nvme-rows-cold-32GB-optimal.pdf'

set log x
set yrange [0:]
set key top left

set xlabel 'selectivity'

set multiplot layout 11,3 rowsfirst
set xrange[0.01:100]
set yrange[0:28661.778]
set title 'uniform / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/uniform-indexscan-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/uniform-indexscan-prefetch-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/uniform-bitmapscan-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/uniform-seqscan-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/uniform-smoothscan-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/uniform-smoothscan-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/uniform-indexscan-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/uniform-indexscan-prefetch-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/uniform-bitmapscan-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/uniform-seqscan-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0:28661.778]
set title 'uniform / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/uniform-indexscan-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/uniform-indexscan-prefetch-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/uniform-bitmapscan-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/uniform-seqscan-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/uniform-smoothscan-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/uniform-smoothscan-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/uniform-indexscan-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/uniform-indexscan-prefetch-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/uniform-bitmapscan-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/uniform-seqscan-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0:28661.778]
set title 'uniform / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/uniform-indexscan-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/uniform-indexscan-prefetch-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/uniform-bitmapscan-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/uniform-seqscan-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/uniform-smoothscan-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/uniform-smoothscan-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/uniform-indexscan-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/uniform-indexscan-prefetch-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/uniform-bitmapscan-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/uniform-seqscan-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0:25550.564]
set title 'linear\_500 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear_500-indexscan-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear_500-indexscan-prefetch-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/linear_500-bitmapscan-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/linear_500-seqscan-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/linear_500-smoothscan-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear_500-smoothscan-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear_500-indexscan-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear_500-indexscan-prefetch-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/linear_500-bitmapscan-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear_500-seqscan-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0:25550.564]
set title 'linear\_500 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear_500-indexscan-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear_500-indexscan-prefetch-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/linear_500-bitmapscan-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/linear_500-seqscan-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/linear_500-smoothscan-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear_500-smoothscan-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear_500-indexscan-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear_500-indexscan-prefetch-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/linear_500-bitmapscan-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear_500-seqscan-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0:25550.564]
set title 'linear\_500 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear_500-indexscan-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear_500-indexscan-prefetch-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/linear_500-bitmapscan-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/linear_500-seqscan-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/linear_500-smoothscan-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear_500-smoothscan-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear_500-indexscan-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear_500-indexscan-prefetch-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/linear_500-bitmapscan-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear_500-seqscan-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0:26067.922]
set title 'linear\_100 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear_100-indexscan-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear_100-indexscan-prefetch-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/linear_100-bitmapscan-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/linear_100-seqscan-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/linear_100-smoothscan-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear_100-smoothscan-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear_100-indexscan-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear_100-indexscan-prefetch-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/linear_100-bitmapscan-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear_100-seqscan-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0:26067.922]
set title 'linear\_100 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear_100-indexscan-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear_100-indexscan-prefetch-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/linear_100-bitmapscan-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/linear_100-seqscan-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/linear_100-smoothscan-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear_100-smoothscan-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear_100-indexscan-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear_100-indexscan-prefetch-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/linear_100-bitmapscan-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear_100-seqscan-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0:26067.922]
set title 'linear\_100 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear_100-indexscan-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear_100-indexscan-prefetch-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/linear_100-bitmapscan-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/linear_100-seqscan-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/linear_100-smoothscan-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear_100-smoothscan-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear_100-indexscan-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear_100-indexscan-prefetch-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/linear_100-bitmapscan-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear_100-seqscan-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0:20469.822]
set title 'linear\_10 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear_10-indexscan-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear_10-indexscan-prefetch-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/linear_10-bitmapscan-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/linear_10-seqscan-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/linear_10-smoothscan-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear_10-smoothscan-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear_10-indexscan-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear_10-indexscan-prefetch-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/linear_10-bitmapscan-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear_10-seqscan-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0:20469.822]
set title 'linear\_10 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear_10-indexscan-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear_10-indexscan-prefetch-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/linear_10-bitmapscan-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/linear_10-seqscan-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/linear_10-smoothscan-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear_10-smoothscan-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear_10-indexscan-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear_10-indexscan-prefetch-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/linear_10-bitmapscan-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear_10-seqscan-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0:20469.822]
set title 'linear\_10 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear_10-indexscan-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear_10-indexscan-prefetch-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/linear_10-bitmapscan-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/linear_10-seqscan-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/linear_10-smoothscan-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear_10-smoothscan-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear_10-indexscan-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear_10-indexscan-prefetch-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/linear_10-bitmapscan-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear_10-seqscan-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0:7769.023]
set title 'linear\_1 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear_1-indexscan-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear_1-indexscan-prefetch-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/linear_1-bitmapscan-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/linear_1-seqscan-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/linear_1-smoothscan-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear_1-smoothscan-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear_1-indexscan-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear_1-indexscan-prefetch-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/linear_1-bitmapscan-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear_1-seqscan-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0:7769.023]
set title 'linear\_1 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear_1-indexscan-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear_1-indexscan-prefetch-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/linear_1-bitmapscan-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/linear_1-seqscan-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/linear_1-smoothscan-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear_1-smoothscan-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear_1-indexscan-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear_1-indexscan-prefetch-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/linear_1-bitmapscan-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear_1-seqscan-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0:7769.023]
set title 'linear\_1 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear_1-indexscan-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear_1-indexscan-prefetch-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/linear_1-bitmapscan-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/linear_1-seqscan-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/linear_1-smoothscan-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear_1-smoothscan-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear_1-indexscan-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear_1-indexscan-prefetch-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/linear_1-bitmapscan-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear_1-seqscan-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0:9382.148]
set title 'linear / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear-indexscan-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear-indexscan-prefetch-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/linear-bitmapscan-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/linear-seqscan-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/linear-smoothscan-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear-smoothscan-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear-indexscan-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear-indexscan-prefetch-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/linear-bitmapscan-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear-seqscan-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0:9382.148]
set title 'linear / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear-indexscan-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear-indexscan-prefetch-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/linear-bitmapscan-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/linear-seqscan-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/linear-smoothscan-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear-smoothscan-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear-indexscan-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear-indexscan-prefetch-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/linear-bitmapscan-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear-seqscan-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0:9382.148]
set title 'linear / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear-indexscan-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear-indexscan-prefetch-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/linear-bitmapscan-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/linear-seqscan-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/linear-smoothscan-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear-smoothscan-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/linear-indexscan-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear-indexscan-prefetch-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/linear-bitmapscan-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear-seqscan-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0:24221.469]
set title 'cyclic\_500 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic_500-indexscan-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic_500-indexscan-prefetch-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/cyclic_500-bitmapscan-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic_500-seqscan-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/cyclic_500-smoothscan-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic_500-smoothscan-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic_500-indexscan-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic_500-indexscan-prefetch-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/cyclic_500-bitmapscan-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic_500-seqscan-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0:24221.469]
set title 'cyclic\_500 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic_500-indexscan-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic_500-indexscan-prefetch-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/cyclic_500-bitmapscan-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic_500-seqscan-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/cyclic_500-smoothscan-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic_500-smoothscan-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic_500-indexscan-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic_500-indexscan-prefetch-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/cyclic_500-bitmapscan-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic_500-seqscan-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0:24221.469]
set title 'cyclic\_500 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic_500-indexscan-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic_500-indexscan-prefetch-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/cyclic_500-bitmapscan-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic_500-seqscan-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/cyclic_500-smoothscan-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic_500-smoothscan-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic_500-indexscan-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic_500-indexscan-prefetch-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/cyclic_500-bitmapscan-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic_500-seqscan-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0:14790.392]
set title 'cyclic\_100 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic_100-indexscan-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic_100-indexscan-prefetch-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/cyclic_100-bitmapscan-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic_100-seqscan-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/cyclic_100-smoothscan-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic_100-smoothscan-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic_100-indexscan-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic_100-indexscan-prefetch-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/cyclic_100-bitmapscan-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic_100-seqscan-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0:14790.392]
set title 'cyclic\_100 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic_100-indexscan-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic_100-indexscan-prefetch-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/cyclic_100-bitmapscan-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic_100-seqscan-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/cyclic_100-smoothscan-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic_100-smoothscan-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic_100-indexscan-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic_100-indexscan-prefetch-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/cyclic_100-bitmapscan-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic_100-seqscan-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0:14790.392]
set title 'cyclic\_100 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic_100-indexscan-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic_100-indexscan-prefetch-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/cyclic_100-bitmapscan-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic_100-seqscan-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/cyclic_100-smoothscan-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic_100-smoothscan-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic_100-indexscan-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic_100-indexscan-prefetch-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/cyclic_100-bitmapscan-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic_100-seqscan-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0:7585.848]
set title 'cyclic\_10 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic_10-indexscan-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic_10-indexscan-prefetch-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/cyclic_10-bitmapscan-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic_10-seqscan-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/cyclic_10-smoothscan-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic_10-smoothscan-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic_10-indexscan-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic_10-indexscan-prefetch-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/cyclic_10-bitmapscan-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic_10-seqscan-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0:7585.848]
set title 'cyclic\_10 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic_10-indexscan-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic_10-indexscan-prefetch-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/cyclic_10-bitmapscan-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic_10-seqscan-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/cyclic_10-smoothscan-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic_10-smoothscan-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic_10-indexscan-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic_10-indexscan-prefetch-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/cyclic_10-bitmapscan-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic_10-seqscan-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0:7585.848]
set title 'cyclic\_10 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic_10-indexscan-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic_10-indexscan-prefetch-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/cyclic_10-bitmapscan-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic_10-seqscan-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/cyclic_10-smoothscan-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic_10-smoothscan-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic_10-indexscan-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic_10-indexscan-prefetch-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/cyclic_10-bitmapscan-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic_10-seqscan-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0:6436.117]
set title 'cyclic\_1 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic_1-indexscan-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic_1-indexscan-prefetch-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/cyclic_1-bitmapscan-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic_1-seqscan-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/cyclic_1-smoothscan-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic_1-smoothscan-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic_1-indexscan-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic_1-indexscan-prefetch-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/cyclic_1-bitmapscan-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic_1-seqscan-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0:6436.117]
set title 'cyclic\_1 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic_1-indexscan-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic_1-indexscan-prefetch-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/cyclic_1-bitmapscan-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic_1-seqscan-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/cyclic_1-smoothscan-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic_1-smoothscan-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic_1-indexscan-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic_1-indexscan-prefetch-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/cyclic_1-bitmapscan-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic_1-seqscan-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0:6436.117]
set title 'cyclic\_1 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic_1-indexscan-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic_1-indexscan-prefetch-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/cyclic_1-bitmapscan-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic_1-seqscan-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/cyclic_1-smoothscan-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic_1-smoothscan-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic_1-indexscan-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic_1-indexscan-prefetch-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/cyclic_1-bitmapscan-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic_1-seqscan-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0:6175.368]
set title 'cyclic / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic-indexscan-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic-indexscan-prefetch-0-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/cyclic-bitmapscan-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic-seqscan-0-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/cyclic-smoothscan-0-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic-smoothscan-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic-indexscan-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic-indexscan-prefetch-0-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/cyclic-bitmapscan-0-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic-seqscan-0-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0:6175.368]
set title 'cyclic / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic-indexscan-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic-indexscan-prefetch-16-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/cyclic-bitmapscan-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic-seqscan-16-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/cyclic-smoothscan-16-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic-smoothscan-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic-indexscan-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic-indexscan-prefetch-16-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/cyclic-bitmapscan-16-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic-seqscan-16-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
set xrange[0.01:100]
set yrange[0:6175.368]
set title 'cyclic / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic-indexscan-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic-indexscan-prefetch-128-32GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffeecc" title "indexscan prefetch", \
     "data/ryzen_nvme/cyclic-bitmapscan-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cceecc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic-seqscan-128-32GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccddff" title "seqscan", \
     "data/ryzen_nvme/cyclic-smoothscan-128-32GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic-smoothscan-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#dddddd" title "smoothscan", \
     "data/ryzen_nvme/cyclic-indexscan-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic-indexscan-prefetch-128-32GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#eeaa00" title "indexscan prefetch (optimal)", \
     "data/ryzen_nvme/cyclic-bitmapscan-128-32GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic-seqscan-128-32GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"
