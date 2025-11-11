# Code for performing multivariate analysis with community abundance matrices

# install.packages("vegan")
library(vegan)

data(dune)
head(dune)

multivar <- decorana(dune)
multivar

dca1l = 3.7004
dca2l = 3.1166
dca3l = 1.30055
dca4l = 1.47888

# get the percentage of the range detected (explained variability) by each axis

total = dca1l + dca2l + dca3l + dca4l

total = sum(c(dca1l, dca2l, dca3l, dca4l))

percdca1 = dca1l * 100 / total
percdca2 = dca2l * 100 / total

percdca1 + percdca2
#  71.03683

multipca <- pca(dune)

plot(multivar)
plot(multipca)


