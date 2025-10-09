# Code ofr estimating population density

# Installing the package
# install.packages("spatstat")

library(spatstat)

bei

# All the colors in R are described here:
# https://r-charts.com/colors/
plot(bei, pch=15, cex=.5)

bei.extra
plot(bei.extra)

plot(bei.extra$elev)
plot(bei.extra[[2]])

el <- bei.extra[[1]]

plot(el)

# passing from points (vectors) to a map (raster)

beidens <- density(bei)
plot(beidens)

plot(el)

plot(beidens)
points(bei)











