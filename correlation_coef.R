#!/usr/bin/env Rscript
args <- commandArgs (TRUE)
#print (args)
filein=args[1]
data <- read.table(filein, header=TRUE, sep=',')
#summary(data)
corr = cor(data$Y,data$X)
pvalue = cor.test(data$Y, data$X)
print("corr coef   Pvalue " )
output = c(corr, pvalue$p.value)
#print(pvalue$p.value)
#print(corr)
print(output)
