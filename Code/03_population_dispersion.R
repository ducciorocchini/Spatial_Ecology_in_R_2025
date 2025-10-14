# install.packages("sdm")
# install.packages("terra")

library(sdm)
library(terra)

file <- system.file("external/species.shp", package="sdm")

rana <- vect(file)
plot(rana)

rana$Occurrence

