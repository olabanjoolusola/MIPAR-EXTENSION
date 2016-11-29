#!/usr/bin/env Rscript
args <- commandArgs (TRUE)
#print (args)
filein=args[1]
data <- read.table(filein, header=TRUE, sep=',')
#summary(data)
ttest = t.test(data$Y,data$X)
print("t-value  Pvalue        Mean-X-and-Y "  )
output = c(ttest$statistic, ttest$p.value, ttest$estimate)
print(output)
