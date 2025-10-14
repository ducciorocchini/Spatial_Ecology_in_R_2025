# install.packages("sdm")
# install.packages("terra")

library(sdm)
library(terra)

file <- system.file("external/species.shp", package="sdm")
# [1] "/usr/local/lib/R/site-library/sdm/external/species.shp"

rana <- vect(file)
rana

rana$Occurrence

plot(rana)

pres <- rana[rana$Occurrence==1]

# Exercise: plot in a multiframe the rana dataset beside the pres dataset
par(mfrow=c(1,2))
plot(rana)
plot(pres)

# Exercise: select data from rana with only absences
abse <- rana[rana$Occurrence==0]
plot(abse)

# Exercise: plot in a multiframe presences beside absences
par(mfrow=c(1,2))
plot(pres)
plot(abse)

# Exercise: plot in a multiframe presences on top of absences
par(mfrow=c(2,1))
plot(pres)
plot(abse)

# Excercise: plot the presences in blue together with absences in red
dev.off()
plot(pres, col="blue", pch=19, cex=2)
points(abse, col="red", pch=19, cex=2)

# Covariates
elev <- system.file("external/elevation.asc", package="sdm")
# [1] "/usr/local/lib/R/site-library/sdm/external/elevation.asc"

elevmap <- rast(elev)

# Exercise: change the colors of the elevation map by the colorRampPalette function
cl <- colorRampPalette(c("green","hotpink","mediumpurple"))(100)
plot(elevmap, col=cl)

# Exercise: plot the presnces together with elevation map
points(pres, pch=19)

