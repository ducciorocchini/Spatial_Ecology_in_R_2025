# Code for multivariate analysis of species x plot data in communities

# install.packages("vegan")
library(vegan)

data(dune)

# Dataset
dune
head(dune)
View(dune)

# Analysis
multivar <- decorana(dune)
multivar

# Axis length
dca1 = 3.7004
dca2 = 3.1166
dca3 = 1.30055
dca4 = 1.47888

total = dca1 + dca2 + dca3 + dca4

# Proportions
prop1 = dca1/total
prop2 = dca2/total
prop3 = dca3/total
prop4 = dca4/total

# Percentages
perc1 = prop1*100
perc2 = prop2*100
perc3 = prop3*100
perc4 = prop4*100

# Whole amount of variability (%)
perc1 + perc2
# The first two axes explain 715 of variability

plot(multivar)




