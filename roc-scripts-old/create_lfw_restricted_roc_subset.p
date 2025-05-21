#!/usr/bin/gnuplot

set term png
set size .75,1
set output "lfw_restricted_roc_subset_curve.png"
set xtics .1
set ytics .1
set grid
set size ratio -1
set xrange [0:.5]
set yrange [.5:1]
set ylabel "true positive rate"
set xlabel "false positive rate"
set title "Image-Restricted, best" font "giant"
set key right bottom
plot "hybrid_with_sift_aligned.txt" using 2:1 with lines linetype 7 title "Hybrid, aligned", \
     "accv09-wolf-hassner-taigman-roc.txt" using 2:1 with lines linetype 8 title "Combined b/g samples based, aligned", \
     "kumar_attrs_sims.txt" using 2:1 with lines linetype 9 title "Attribute and simile classifiers", \
     "kumar_human_orig.txt" using 2:1 with lines linetype 10 title "Human, funneled", \
     "LE_combine.txt" using 2:1 with lines linetype 14 title "Multiple LE + comp", \
     "aligned_csml_svm_roc.txt" using 2:1 with lines linetype 16 title "CSML + SVM, aligned", \
     "pinto-cox-fg2011-roc.txt" using 2:1 with lines linetype 17 title "High-Throughput Brain-Inspired Features", \
     "associatepredict_cvpr11.txt" using 2:1 with lines linetype 18 title "Associate-Predict", \
     "Haejong_Milanfar_LARK_supervised.txt" using 2:1 with lines linetype 19 title "LARK supervised, aligned faces", \
     "dml_eig_combined_restricted_jmlr.txt" using 2:1 with lines linetype 20 title "DML-eig combined, aligned & funneled", \
     "berg_belhumeur_attrs_bmvc12.txt" using 2:1 with lines linetype 21 title "Tom-vs-Pete", \
     "apem-funnel-roc.txt" using 2:1 with lines linetype 22 title "APEM (fusion), funneled", \
     "joint_bayesian_combined_restricted_outside_eccv12.txt" using 2:1 with lines linetype 23 title "combined Joint Bayesian", \
     "high_dim_LBP_restricted_outside_cvpr13.txt" using 2:1 with lines linetype 24 title "high dimensional LBP", \
     "LFW_ROC_SFRD+PMML.txt" using 2:1 with lines linetype 25 title "SFRD+PMML", \
     "paf_cvpr2013.txt" using 2:1 with lines linetype 26 title "PAF", \
     "fisher-vector-faces-restricted.txt" using 2:1 with lines linetype 27 title "Fisher vector faces", \
     "XudongCao_TransferLearning_FaceVerification_ICCV2013.txt" using 2:1 with lines linetype 28 title "TL Joint Bayesian", \
     "sub-sml_iccv2013_combined_restricted.txt" using 1:2 with lines linetype 29 title "Sub-SML"
