#!/usr/bin/gnuplot

set term png
set size .75,1
set output "lfw_02.png"
set xtics .1
set ytics .1
set grid
set size ratio -1
set ylabel "true positive rate"
set xlabel "false positive rate"
set key right bottom
plot "eigenfaces-original-roc.txt" using 2:1 with lines title "Eigenfaces, original"
