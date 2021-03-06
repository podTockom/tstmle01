# Test Monte Carlo function
library(Hmisc)

set.seed(2)
load("~/Dropbox/Berkeley_Projects/Software/tstmle01/data/ts_samp_data.RData")
data<-ts_samp_data

fit <- initEst(data, freqW = 2, freqA = 2, freqY = 2)

# Intervention at time point 12
# start generating MC estimates from batch 2, W,A, and Y node
mcEst_int <- mcEst(fit, start = 2, node = "W", t = 5, Anode = 2, intervention = 1, MC = 1000)
mcEst_int$estimate

mcEst_int <- mcEst(fit, start = 2, node = "A", t = 5, Anode = 2, intervention = 1, MC = 1000)
mcEst_int$estimate

mcEst_int <- mcEst(fit, start = 2, node = "Y", t = 5, Anode = 2, intervention = 1, MC = 1000)
mcEst_int$estimate
