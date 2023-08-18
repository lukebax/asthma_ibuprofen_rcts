# install.packages("meta")

library(meta)


##### PRIMARY ANALYSIS ##### 

# general, short-term

data_primary_general_short_lesko1995 <- read.csv(file="data/data_primary1_general_short_lesko1995.csv", header = TRUE, sep = ",")

meta_primary_general_short_lesko1995 <- metabin(event.e = AE_ibuprofen,
                                              n.e = N_ibuprofen,
                                              event.c = AE_comparator,
                                              n.c = N_comparator,
                                              studlab = Study,
                                              dat = data_primary_general_short_lesko1995,
                                              sm = "OR",
                                              method = "Peto")

forest(meta_primary_general_short_lesko1995,
       label.e = "Ibuprofen",
       label.c = "Comparator",
       label.left = "Favours ibuprofen",
       label.right = "Favours comparator",
       ff.lr = 'italic', fs.lr = 12,
       print.I2 = TRUE,
       print.I2.ci = TRUE,
       print.tau2 = TRUE,
       print.tau2.ci = TRUE,
       print.Q = TRUE,
       print.pval.Q = TRUE,
       addrows.below.overall = 4)


# asthmatic, long-term

data_primary_asthmatic_long <- read.csv(file="data/data_primary2_asthmatic_long.csv", header = TRUE, sep = ",")

meta_primary_asthmatic_long <- metagen(TE = log(OR),
                                                    seTE = (log(UCL)-log(LCL))/3.92,
                                                    sm = "OR",
                                                    studlab = Study,
                                                    dat = data_primary_asthmatic_long)

forest(meta_primary_asthmatic_long,
       xlim = c(0.5, 5),
       label.e = "Ibuprofen",
       label.c = "Comparator",
       colgap.left = "1.4cm",
       colgap.forest.left = "1.4cm",
       label.left = "Favours ibuprofen",
       label.right = "Favours comparator",
       ff.lr = 'italic', fs.lr = 12,
       print.I2 = TRUE,
       print.I2.ci = TRUE,
       print.tau2 = TRUE,
       print.tau2.ci = TRUE,
       print.Q = TRUE,
       print.pval.Q = TRUE,
       addrows.below.overall = 4)


##### SENSITIVITY ANALYSIS ##### 

# general, short-term: Lesko 1999

data_sensitivity1_general_short_lesko1999 <- read.csv(file="data/data_sensitivity1_general_short_lesko1999.csv", header = TRUE, sep = ",")

meta_sensitivity1_general_short_lesko1999 <- metabin(event.e = AE_ibuprofen,
                                                     n.e = N_ibuprofen,
                                                     event.c = AE_comparator,
                                                     n.c = N_comparator,
                                                     studlab = Study,
                                                     dat = data_sensitivity1_general_short_lesko1999,
                                                     sm = "OR",
                                                     method = "Peto")

forest(meta_sensitivity1_general_short_lesko1999,
       label.e = "Ibuprofen",
       label.c = "Comparator",
       label.left = "Favours ibuprofen",
       label.right = "Favours comparator",
       ff.lr = 'italic', fs.lr = 12,
       print.I2 = TRUE,
       print.I2.ci = TRUE,
       print.tau2 = TRUE,
       print.tau2.ci = TRUE,
       print.Q = TRUE,
       print.pval.Q = TRUE,
       addrows.below.overall = 4)


# general, short-term: Lesko 1995 ROB

data_sensitivity2_general_short_lesko1995_ROB <- read.csv(file="data/data_sensitivity2_general_short_lesko1995_ROB.csv", header = TRUE, sep = ",")

meta_sensitivity2_general_short_lesko1995_ROB <- metabin(event.e = AE_ibuprofen,
                                                     n.e = N_ibuprofen,
                                                     event.c = AE_comparator,
                                                     n.c = N_comparator,
                                                     studlab = Study,
                                                     dat = data_sensitivity2_general_short_lesko1995_ROB,
                                                     sm = "OR",
                                                     method = "Peto")

forest(meta_sensitivity2_general_short_lesko1995_ROB,
       label.e = "Ibuprofen",
       label.c = "Comparator",
       label.left = "Favours ibuprofen",
       label.right = "Favours comparator",
       ff.lr = 'italic', fs.lr = 12,
       print.I2 = TRUE,
       print.I2.ci = TRUE,
       print.tau2 = TRUE,
       print.tau2.ci = TRUE,
       print.Q = TRUE,
       print.pval.Q = TRUE,
       addrows.below.overall = 4)


# general, short-term: Lesko 1999

data_sensitivity3_general_short_lesko1999_ROB <- read.csv(file="data/data_sensitivity3_general_short_lesko1999_ROB.csv", header = TRUE, sep = ",")

meta_sensitivity3_general_short_lesko1999_ROB <- metabin(event.e = AE_ibuprofen,
                                                     n.e = N_ibuprofen,
                                                     event.c = AE_comparator,
                                                     n.c = N_comparator,
                                                     studlab = Study,
                                                     dat = data_sensitivity3_general_short_lesko1999_ROB,
                                                     sm = "OR",
                                                     method = "Peto")

forest(meta_sensitivity3_general_short_lesko1999_ROB,
       label.e = "Ibuprofen",
       label.c = "Comparator",
       label.left = "Favours ibuprofen",
       label.right = "Favours comparator",
       ff.lr = 'italic', fs.lr = 12,
       print.I2 = TRUE,
       print.I2.ci = TRUE,
       print.tau2 = TRUE,
       print.tau2.ci = TRUE,
       print.Q = TRUE,
       print.pval.Q = TRUE,
       addrows.below.overall = 4)
