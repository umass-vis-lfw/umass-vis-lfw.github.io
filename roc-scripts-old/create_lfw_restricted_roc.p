#!/usr/bin/gnuplot

set term png
set size .75,1
set output "lfw_restricted_roc_curve.png"
set xtics .1
set ytics .1
set grid
set size ratio -1
set ylabel "true positive rate"
set xlabel "false positive rate"
set title "Image-Restricted, all" font "giant"
set key right bottom
plot "eigenfaces-original-roc.txt" using 2:1 with lines title "Eigenfaces, original", \
     "nowak-original-roc.txt" using 2:1 with lines title "Nowak, original", \
     "nowak-funneled-roc.txt" using 2:1 with lines title "Nowak, funneled", \
     "combined16.txt" using 2:1 with lines title "Hybrid descriptor-based, funneled", \
     "funneled-v1-like-roc.txt" using 2:1 with lines title "V1-like/MKL, funneled", \
     "guillaumin-ldml.txt" using 2:1 with lines title "LDML, funneled", \
     "hybrid_with_sift_aligned.txt" using 2:1 with lines title "Hybrid, aligned", \
     "accv09-wolf-hassner-taigman-roc.txt" using 2:1 with lines title "Combined b/g samples based, aligned", \
     "kumar_attrs_sims.txt" using 2:1 with lines title "Attribute and simile classifiers", \
     "kumar_human_orig.txt" using 2:1 with lines title "Human, funneled", \
     "kumar_human_crop.txt" using 2:1 with lines title "Human, cropped", \
     "kumar_human_inv.txt" using 2:1 with lines title "Human, inverse mask", \
     "LE_bestsingle.txt" using 2:1 with lines title "Single LE + holistic", \
     "LE_combine.txt" using 2:1 with lines title "Multiple LE + comp", \
     "aligned_lbp_sqrt_csml_roc.txt" using 2:1 with lines title "LBP + CSML, aligned", \
     "aligned_csml_svm_roc.txt" using 2:1 with lines title "CSML + SVM, aligned", \
     "pinto-cox-fg2011-roc.txt" using 2:1 with lines title "High-Throughput Brain-Inspired Features", \
     "associatepredict_cvpr11.txt" using 2:1 with lines title "Associate-Predict", \
     "Haejong_Milanfar_LARK_supervised.txt" using 2:1 with lines title "LARK supervised, aligned faces", \
     "dml_eig_combined_restricted_jmlr.txt" using 2:1 with lines title "DML-eig combined, aligned & funneled", \
     "berg_belhumeur_attrs_bmvc12.txt" using 2:1 with lines title "Tom-vs-Pete", \
     "apem-funnel-roc.txt" using 2:1 with lines title "APEM (fusion), funneled", \
     "joint_bayesian_combined_restricted_outside_eccv12.txt" using 2:1 with lines title "combined Joint Bayesian", \
     "high_dim_LBP_restricted_outside_cvpr13.txt" using 2:1 with lines title "high dimensional LBP", \
     "LFW_ROC_SFRD+PMML.txt" using 2:1 with lines title "SFRD+PMML", \
     "paf_cvpr2013.txt" using 2:1 with lines title "PAF", \
     "fisher-vector-faces-restricted.txt" using 2:1 with lines title "Fisher vector faces", \
     "XudongCao_TransferLearning_FaceVerification_ICCV2013.txt" using 2:1 with lines title "TL Joint Bayesian", \
     "sub-sml_iccv2013_combined_restricted.txt" using 1:2 with lines title "Sub-SML"
#     "merl-roc.txt" using 2:1 with lines title "Merl", \
#     "combined-roc.txt" using 2:1 with lines title "Merl+Nowak, funneled", \
#     "funneled-pixels-roc.txt" using 2:1 with lines title "Pixels/MKL, funneled", \
#     "kumar_attrs.txt" using 2:1 with lines title "Attribute classifiers", \
#     "kumar_sims.txt" using 2:1 with lines linetype 14 title "Simile classifiers", \
#     "dml_eig_SIFT_restricted_jmlr.txt" using 2:1 with lines title "DML-eig SIFT, aligned", \
