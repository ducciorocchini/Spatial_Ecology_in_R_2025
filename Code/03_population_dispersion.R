# install.packages("sdm")
# install.packages("terra")

library(terra)
library(sdm)

file <- system.file("external/species.shp", package="sdm")

rana <- vect(file)
plot(rana)

# Occurrences
rana$Occurrence

# Selection of presences
pres <- rana[rana$Occurrence==1]

# Exercise: select all absences
abse <- rana[rana$Occurrence==0]
# or
abse <- rana[rana$Occurrence!=1]

# Ecercise: plot the presences with a color together with the absences with another color
plot(pres, col="#76EE00") # chartreuse1
# or
plot(pres, col="chartreuse1") 

plot(abse, col="#FF1493") # deeppink
# I cannot use plot but, rather, I would prefer using points()

plot(pres, col="chartreuse1") 
points(abse, col="#FF1493") # deeppink

# Exercise: do the same in a multiframe with the two sets: pres on top of abse
par(mfrow=c(2,1))
plot(pres)
plot(abse)













