set terminal pdfcairo size 16,40 enhanced font 'Verdana,12'
set output 'ryzen_nvme-rows-cold-4GB-optimal.pdf'

set log x
set yrange [0:]
set key top left

set xlabel 'selectivity'

set multiplot layout 11,3 rowsfirst
set xrange[0.01:100]
set yrange[0:28661.778]
set title 'uniform / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/uniform-indexscan-0-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/uniform-bitmapscan-0-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_nvme/uniform-seqscan-0-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_nvme/uniform-indexscan-0-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/uniform-bitmapscan-0-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/uniform-seqscan-0-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:28661.778]
set title 'uniform / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/uniform-indexscan-16-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/uniform-bitmapscan-16-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_nvme/uniform-seqscan-16-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_nvme/uniform-indexscan-16-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/uniform-bitmapscan-16-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/uniform-seqscan-16-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:28661.778]
set title 'uniform / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/uniform-indexscan-128-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/uniform-bitmapscan-128-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_nvme/uniform-seqscan-128-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_nvme/uniform-indexscan-128-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/uniform-bitmapscan-128-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/uniform-seqscan-128-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:25550.564]
set title 'linear\_500 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear_500-indexscan-0-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear_500-bitmapscan-0-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_nvme/linear_500-seqscan-0-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_nvme/linear_500-indexscan-0-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear_500-bitmapscan-0-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear_500-seqscan-0-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:25550.564]
set title 'linear\_500 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear_500-indexscan-16-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear_500-bitmapscan-16-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_nvme/linear_500-seqscan-16-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_nvme/linear_500-indexscan-16-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear_500-bitmapscan-16-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear_500-seqscan-16-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:25550.564]
set title 'linear\_500 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear_500-indexscan-128-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear_500-bitmapscan-128-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_nvme/linear_500-seqscan-128-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_nvme/linear_500-indexscan-128-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear_500-bitmapscan-128-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear_500-seqscan-128-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:26067.922]
set title 'linear\_100 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear_100-indexscan-0-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear_100-bitmapscan-0-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_nvme/linear_100-seqscan-0-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_nvme/linear_100-indexscan-0-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear_100-bitmapscan-0-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear_100-seqscan-0-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:26067.922]
set title 'linear\_100 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear_100-indexscan-16-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear_100-bitmapscan-16-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_nvme/linear_100-seqscan-16-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_nvme/linear_100-indexscan-16-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear_100-bitmapscan-16-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear_100-seqscan-16-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:26067.922]
set title 'linear\_100 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear_100-indexscan-128-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear_100-bitmapscan-128-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_nvme/linear_100-seqscan-128-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_nvme/linear_100-indexscan-128-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear_100-bitmapscan-128-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear_100-seqscan-128-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:20469.822]
set title 'linear\_10 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear_10-indexscan-0-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear_10-bitmapscan-0-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_nvme/linear_10-seqscan-0-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_nvme/linear_10-indexscan-0-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear_10-bitmapscan-0-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear_10-seqscan-0-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:20469.822]
set title 'linear\_10 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear_10-indexscan-16-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear_10-bitmapscan-16-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_nvme/linear_10-seqscan-16-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_nvme/linear_10-indexscan-16-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear_10-bitmapscan-16-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear_10-seqscan-16-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:20469.822]
set title 'linear\_10 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear_10-indexscan-128-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear_10-bitmapscan-128-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_nvme/linear_10-seqscan-128-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_nvme/linear_10-indexscan-128-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear_10-bitmapscan-128-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear_10-seqscan-128-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:6223.482]
set title 'linear\_1 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear_1-indexscan-0-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear_1-bitmapscan-0-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_nvme/linear_1-seqscan-0-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_nvme/linear_1-indexscan-0-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear_1-bitmapscan-0-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear_1-seqscan-0-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:6223.482]
set title 'linear\_1 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear_1-indexscan-16-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear_1-bitmapscan-16-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_nvme/linear_1-seqscan-16-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_nvme/linear_1-indexscan-16-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear_1-bitmapscan-16-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear_1-seqscan-16-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:6223.482]
set title 'linear\_1 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear_1-indexscan-128-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear_1-bitmapscan-128-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_nvme/linear_1-seqscan-128-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_nvme/linear_1-indexscan-128-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear_1-bitmapscan-128-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear_1-seqscan-128-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:2257.851]
set title 'linear / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear-indexscan-0-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear-bitmapscan-0-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_nvme/linear-seqscan-0-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_nvme/linear-indexscan-0-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear-bitmapscan-0-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear-seqscan-0-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:2257.851]
set title 'linear / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear-indexscan-16-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear-bitmapscan-16-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_nvme/linear-seqscan-16-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_nvme/linear-indexscan-16-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear-bitmapscan-16-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear-seqscan-16-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:2257.851]
set title 'linear / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/linear-indexscan-128-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/linear-bitmapscan-128-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_nvme/linear-seqscan-128-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_nvme/linear-indexscan-128-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/linear-bitmapscan-128-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/linear-seqscan-128-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:24221.469]
set title 'cyclic\_500 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic_500-indexscan-0-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic_500-bitmapscan-0-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic_500-seqscan-0-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_nvme/cyclic_500-indexscan-0-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic_500-bitmapscan-0-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic_500-seqscan-0-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:24221.469]
set title 'cyclic\_500 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic_500-indexscan-16-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic_500-bitmapscan-16-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic_500-seqscan-16-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_nvme/cyclic_500-indexscan-16-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic_500-bitmapscan-16-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic_500-seqscan-16-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:24221.469]
set title 'cyclic\_500 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic_500-indexscan-128-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic_500-bitmapscan-128-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic_500-seqscan-128-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_nvme/cyclic_500-indexscan-128-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic_500-bitmapscan-128-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic_500-seqscan-128-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:14790.392]
set title 'cyclic\_100 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic_100-indexscan-0-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic_100-bitmapscan-0-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic_100-seqscan-0-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_nvme/cyclic_100-indexscan-0-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic_100-bitmapscan-0-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic_100-seqscan-0-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:14790.392]
set title 'cyclic\_100 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic_100-indexscan-16-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic_100-bitmapscan-16-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic_100-seqscan-16-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_nvme/cyclic_100-indexscan-16-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic_100-bitmapscan-16-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic_100-seqscan-16-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:14790.392]
set title 'cyclic\_100 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic_100-indexscan-128-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic_100-bitmapscan-128-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic_100-seqscan-128-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_nvme/cyclic_100-indexscan-128-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic_100-bitmapscan-128-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic_100-seqscan-128-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:5359.715]
set title 'cyclic\_10 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic_10-indexscan-0-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic_10-bitmapscan-0-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic_10-seqscan-0-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_nvme/cyclic_10-indexscan-0-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic_10-bitmapscan-0-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic_10-seqscan-0-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:5359.715]
set title 'cyclic\_10 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic_10-indexscan-16-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic_10-bitmapscan-16-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic_10-seqscan-16-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_nvme/cyclic_10-indexscan-16-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic_10-bitmapscan-16-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic_10-seqscan-16-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:5359.715]
set title 'cyclic\_10 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic_10-indexscan-128-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic_10-bitmapscan-128-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic_10-seqscan-128-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_nvme/cyclic_10-indexscan-128-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic_10-bitmapscan-128-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic_10-seqscan-128-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:3863.923]
set title 'cyclic\_1 / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic_1-indexscan-0-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic_1-bitmapscan-0-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic_1-seqscan-0-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_nvme/cyclic_1-indexscan-0-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic_1-bitmapscan-0-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic_1-seqscan-0-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:3863.923]
set title 'cyclic\_1 / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic_1-indexscan-16-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic_1-bitmapscan-16-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic_1-seqscan-16-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_nvme/cyclic_1-indexscan-16-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic_1-bitmapscan-16-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic_1-seqscan-16-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:3863.923]
set title 'cyclic\_1 / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic_1-indexscan-128-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic_1-bitmapscan-128-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic_1-seqscan-128-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_nvme/cyclic_1-indexscan-128-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic_1-bitmapscan-128-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic_1-seqscan-128-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:2900.011]
set title 'cyclic / eic=0' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic-indexscan-0-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic-bitmapscan-0-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic-seqscan-0-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_nvme/cyclic-indexscan-0-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic-bitmapscan-0-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic-seqscan-0-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:2900.011]
set title 'cyclic / eic=16' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic-indexscan-16-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic-bitmapscan-16-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic-seqscan-16-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_nvme/cyclic-indexscan-16-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic-bitmapscan-16-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic-seqscan-16-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

set xrange[0.01:100]
set yrange[0:2900.011]
set title 'cyclic / eic=128' font 'Verdana Bold,12'
set ylabel 'duration'

plot "data/ryzen_nvme/cyclic-indexscan-128-4GB-no.data"    using 1:3 with points pt 7 ps 0.75 lc rgb "#ffcccc" title "indexscan", \
     "data/ryzen_nvme/cyclic-bitmapscan-128-4GB-no.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#ccffcc" title "bitmapscan", \
     "data/ryzen_nvme/cyclic-seqscan-128-4GB-no.data"      using 1:3 with points pt 7 ps 0.75 lc rgb "#ccccff" title "seqscan", \
     "data/ryzen_nvme/cyclic-indexscan-128-4GB-yes.data"   using 1:3 with points pt 7 ps 0.75 lc rgb "#cc0000" title "indexscan (optimal)", \
     "data/ryzen_nvme/cyclic-bitmapscan-128-4GB-yes.data"  using 1:3 with points pt 7 ps 0.75 lc rgb "#00bb00" title "bitmapscan (optimal)", \
     "data/ryzen_nvme/cyclic-seqscan-128-4GB-yes.data"     using 1:3 with points pt 7 ps 0.75 lc rgb "#0000cc" title "seqscan (optimal)"

