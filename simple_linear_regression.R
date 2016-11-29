#!/usr/bin/env Rscript
args <- commandArgs (TRUE)
#print (args)
filein=args[1]
data <- read.table(filein, header=TRUE, sep=',')
#summary(data)
fit = lm(Y~X, data=data)
print("beta       Pvalue     Intercept"  )
output = c(summary(fit)$coef[2], summary(fit)$coef[8], summary(fit)$coef[1])
print(output)
#summary(fit)$coef
