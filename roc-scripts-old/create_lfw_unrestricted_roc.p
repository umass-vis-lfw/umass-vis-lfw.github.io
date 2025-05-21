#!/usr/bin/gnuplot

set term png
set size .75,1
set output "lfw_unrestricted_roc_curve.png"
set xtics .1
set ytics .1
set grid
set size ratio -1
set ylabel "true positive rate"
set xlabel "false positive rate"
set title "Unrestricted, all" font "giant"
set key right bottom
plot "guillaumin-ldmlmknn.txt" using 2:1 with lines title "LDML+MkNN, funneled (u)", \
     "multishot_unrestricted_bmvc09.txt" using 2:1 with lines title "Multishot combined, aligned (u)", \
     "multishot_unrestricted_single_feature_bmvc09.txt" using 2:1 with lines title "LBP multishot, aligned (u)", \
     "plda_lbp_unrestricted_pami.txt" using 2:1 with lines title "LBP PLDA, aligned (u)", \
     "plda_combined_unrestricted_pami.txt" using 2:1 with lines title "Combined PLDA, aligned & funneled (u)", \
     "joint_bayesian_combined_unrestricted_eccv12.txt" using 2:1 with lines title "combined Joint Bayesian (u)", \
     "high_dim_LBP_unrestricted_cvpr13.txt" using 2:1 with lines title "high dimensional LBP (u)", \
     "fisher-vector-faces-unrestricted.txt" using 2:1 with lines title "Fisher vector faces (u)", \
     "sub-sml_iccv2013_combined_unrestricted.txt" using 1:2 with lines title "Sub-SML (u)", \
     "taigman_wolf_r2011b.txt" using 2:1 with lines title "face.com r2011b", \
     "ROC_CovarianceMatrix.txt" using 2:1 with lines title "CMD, aligned", \
     "ROC_SLBP.txt" using 2:1 with lines title "SLBP, aligned", \
     "ROC_Combined.txt" using 2:1 with lines title "CMD+SLBP, aligned", \
     "visionlabs-unrestricted.txt" using 2:1 with lines title "VisionLabs ver. 1.0, aligned", \
     "Aurora-c-2014-1--facerec.com.txt" using 2:1 with lines title "Aurora-c-2014-1", \
     "facepp3.0v5.txt" using 2:1 with lines title "Face++"
