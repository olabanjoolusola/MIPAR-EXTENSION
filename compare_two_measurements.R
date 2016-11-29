#!/usr/bin/env Rscript
args <- commandArgs (TRUE)
#print (args)
filein=args[1]
data <- read.table(filein, header=TRUE, sep=',')
#summary(data)
ttest = t.test(data$Y,data$X, paired=TRUE)
print("t-value  Pvalue        Mean-of-Difference"  )
output = c(ttest$statistic, ttest$p.value, ttest$estimate)
print(output)
#print(ttest)
