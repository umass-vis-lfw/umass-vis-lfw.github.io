#!/usr/bin/gnuplot

set term png enhanced
set size .75,1
set output "lfw_unsupervised_roc_curve.png"
set xtics .1
set ytics .1
set grid
set size ratio -1
set ylabel "true positive rate"
set xlabel "false positive rate"
set title "Unsupervised" font "giant"
set key right bottom
plot "lbp_eurasip2009_jrs-roc.txt" using 2:1 with lines title "H-XS-40, Image region 81x150, aligned faces", \
     "gabor_eurasip2009_jrs-roc.txt" using 2:1 with lines title "GJD-BC-100, Image region 100x185, aligned faces", \
     "sift_eurasip2009_jrs-roc.txt" using 2:1 with lines title "SD-MATCHES, Image region 100x185, aligned faces", \
     "Haejong_Milanfar_LARK_unsupervised.txt" using 2:1 with lines title "LARK unsupervised, aligned faces", \
     "paf_cvpr2013.txt" using 2:1 with lines title "PAF", \
     "DFD_unsupervised.txt" using 2:1 with lines title "DFD"
