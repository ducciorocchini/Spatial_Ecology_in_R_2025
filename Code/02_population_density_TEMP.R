# Code related to population ecology

# A package is needed for point pattern analysis
# install.packages("spatstat")
library(spatstat)

# let's use the bei data:
# data description:
# https://CRAN.R-project.org/package=spatstat

bei

# plotting the data
plot(bei)

# changing dimension - cex
plot(bei, cex=.2)

# changing the symbol - pch
plot(bei, cex=.2, pch=19)

# additional datasets
bei.extra
plot(bei.extra)

# let's use only part of the dataset: elev
plot(bei.extra$elev)
elevation <- bei.extra$elev
plot(elevation)

# second method to select elements
elevation2 <- bei.extra[[1]]
plot(elevation2)

# passing from points to a countinuous surface
densitymap <- density(bei)
plot(densitymap)
points(bei, cex=.2)

########## DAY 2
# Plotting the maps one beside the other
par(mfrow=c(1,2))
plot(elevation2)
plot(densitymap)

# Exercise: make a multiframe with maps one on top of the other
par(mfrow=c(2,1))
plot(elevation2)
plot(densitymap)

# one frined to clear graphs
dev.off()
plot(elevation2)

# Changin colors to maps
cl <- colorRampPalette(c("red", "orange", "yellow"))(3)
plot(densitymap, col=cl)

cl <- colorRampPalette(c("red", "orange", "yellow"))(10)
plot(densitymap, col=cl)

cl <- colorRampPalette(c("red", "orange", "yellow"))(100)
plot(densitymap, col=cl)

# search your browser for "colors in R" 
# http://www.stat.columbia.edu/~tzheng/files/Rcolor.pdf

# Exercise: change the color ramp palette using different colors

cln <- colorRampPalette(c("purple1", "orchid2", "palegreen3", "paleturquoise"))(100)
plot(densitymap, col=cln)

# Exrcise: build a multiframe and plot the densitymap with two different color ramp palettes one beside the other

par(mfrow=c(1,2))

cln <- colorRampPalette(c("purple1", "orchid2", "palegreen3", "paleturquoise"))(100)
plot(densitymap, col=cln)

clg <- colorRampPalette(c("green4", "green3", "green2", "green1", "green"))(100)
plot(densitymap, col=clg)

dev.off()










