#!/usr/bin/gnuplot

set term png
set size .75,1
set output "lfw_roc_curve.png"
set xtics .1
set ytics .1
set grid
set size ratio -1
set ylabel "true positive rate"
set xlabel "false positive rate"
set title "Image-Restricted and Unrestricted, all" font "giant"
set key right bottom
plot "eigenfaces-original-roc.txt" using 2:1 with lines title "Eigenfaces, original", \
     "nowak-original-roc.txt" using 2:1 with lines title "Nowak, original", \
     "nowak-funneled-roc.txt" using 2:1 with lines title "Nowak, funneled", \
     "merl-roc.txt" using 2:1 with lines title "Merl", \
     "combined-roc.txt" using 2:1 with lines title "Merl+Nowak, funneled", \
     "combined16.txt" using 2:1 with lines title "Hybrid descriptor-based, funneled", \
     "funneled-pixels-roc.txt" using 2:1 with lines title "Pixels/MKL, funneled", \
     "funneled-v1-like-roc.txt" using 2:1 with lines title "V1-like/MKL, funneled", \
     "guillaumin-ldml.txt" using 2:1 with lines title "LDML, funneled", \
     "hybrid_with_sift_aligned.txt" using 2:1 with lines title "Hybrid, aligned", \
     "accv09-wolf-hassner-taigman-roc.txt" using 2:1 with lines title "Combined b/g samples based, aligned", \
     "kumar_attrs.txt" using 2:1 with lines title "Attribute classifiers", \
     "kumar_sims.txt" using 2:1 with lines title "Simile classifiers", \
     "kumar_attrs_sims.txt" using 2:1 with lines title "Attribute and simile classifiers", \
     "kumar_human_orig.txt" using 2:1 with lines title "Human, funneled", \
     "kumar_human_crop.txt" using 2:1 with lines title "Human, cropped", \
     "kumar_human_inv.txt" using 2:1 with lines title "Human, inverse mask", \
     "guillaumin-ldmlmknn.txt" using 2:1 with lines title "LDML+MkNN, funneled (u)", \
     "multishot_unrestricted_bmvc09.txt" using 2:1 with lines title "Multishot combined, aligned (u)", \
     "multishot_unrestricted_single_feature_bmvc09.txt" using 2:1 with lines title "LBP multishot, aligned (u)", \
     "lbp_eurasip2009_jrs-roc.txt" using 2:1 with lines title "H-XS-40, Image region 81x150, aligned faces", \
     "gabor_eurasip2009_jrs-roc.txt" using 2:1 with lines title "GJD-BC-100, Image region 100x185, unaligned faces", \
     "sift_eurasip2009_jrs-roc.txt" using 2:1 with lines title "SD-MATCHES, Image region 100x185, aligned faces", \
     "LE_bestsingle.txt" using 2:1 with lines title "Single LE + holistic", \
     "LE_combine.txt" using 2:1 with lines title "Multiple LE + comp", \
     "aligned_lbp_sqrt_csml_roc.txt" using 2:1 with lines title "LBP + CSML, aligned", \
     "aligned_csml_svm_roc.txt" using 2:1 with lines title "CSML + SVM, aligned", \
     "pinto-cox-fg2011-roc.txt" using 2:1 with lines title "High-Throughput Brain-Inspired Features", \
     "plda_lbp_unrestricted_pami.txt" using 2:1 with lines title "LBP PLDA, aligned (u)", \
     "plda_combined_unrestricted_pami.txt" using 2:1 with lines title "Combined PLDA, aligned & funneled (u)", \
     "associatepredict_cvpr11.txt" using 2:1 with lines title "Associate-Predict", \
     "taigman_wolf_r2011b.txt" using 2:1 with lines title "face.com r2011b (u)", \
     "Haejong_Milanfar_LARK_unsupervised.txt" using 2:1 with lines title "LARK unsupervised, aligned faces", \
     "Haejong_Milanfar_LARK_supervised.txt" using 2:1 with lines title "LARK supervised, aligned faces", \
     "dml_eig_SIFT_restricted_jmlr.txt" using 2:1 with lines title "DML-eig SIFT, aligned", \
     "dml_eig_combined_restricted_jmlr.txt" using 2:1 with lines title "DML-eig combined, aligned & funneled", \
     "ROC_CovarianceMatrix.txt" using 2:1 with lines title "CMD, aligned", \
     "ROC_SLBP.txt" using 2:1 with lines title "SLBP, aligned", \
     "ROC_Combined.txt" using 2:1 with lines title "CMD+SLBP, aligned", \
     "berg_belhumeur_attrs_bmvc12.txt" using 2:1 with lines title "His-vs-Her", \
     "joint_bayesian_combined_restricted_outside_eccv12.txt" using 2:1 with lines title "combined Joint Bayesian", \
     "high_dim_LBP_restricted_outside_cvpr13.txt" using 2:1 with lines title "high dimensional LBP", \
     "joint_bayesian_combined_unrestricted_eccv12.txt" using 2:1 with lines title "combined Joint Bayesian (u)", \
     "high_dim_LBP_unrestricted_cvpr13.txt" using 2:1 with lines title "high dimensional LBP (u)", \
     "apem-funnel-roc.txt" using 2:1 with lines title "APEM (fusion), funneled", \
     "fisher-vector-faces-restricted.txt" using 2:1 with lines title "Fisher vector faces", \
     "fisher-vector-faces-unrestricted.txt" using 2:1 with lines title "Fisher vector faces (u)", \
     "DFD_unsupervised.txt" using 2:1 with lines title "DFD", \
     "XudongCao_TransferLearning_FaceVerification_ICCV2013.txt" using 2:1 with lines title "TL Joint Bayesian", \
     "sub-sml_iccv2013_combined_restricted.txt" using 1:2 with lines title "Sub-SML", \
     "sub-sml_iccv2013_combined_unrestricted.txt" using 1:2 with lines title "Sub-SML (u)"

#     "combined16UF.txt" using 2:1 with lines title "Hybrid descriptor-based, original", \
#     "combined16LFW2.txt" using 2:1 with lines title "Hybrid descriptor-based, aligned", \
