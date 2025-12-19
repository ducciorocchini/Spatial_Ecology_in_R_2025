# This code will solve olorblindness problems

library(terra)

setwd("~/Desktop")
# setwd("c://user/yourname/Desktop")

vini <- rast("vinicunca.jpg")
vini <- flip(vini)
plot(vini)

# copy paste the function cblind.plot() from:
# https://github.com/ducciorocchini/cblindplot/blob/main/R/cblind.plot.R

cblind.plot(vini, cvd="protanopia")

rb <- rast("rainbow.jpg ")
rb <- flip(rb)
plot(rb)

cblind.plot(rb, cvd="protanopia")
cblind.plot(rb, cvd="deuteranopia")
cblind.plot(rb, cvd="tritanopia")




