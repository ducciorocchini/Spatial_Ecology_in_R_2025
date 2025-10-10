# Code for studying population spread over space

# install.packages("spatstat")

library(spatstat)

bei

plot(bei)

# changing character
plot(bei, pch=15)

# decrease dimension
plot(bei, pch=15, cex=.5)

# ancillary variables
bei.extra

plot(bei.extra)

# selecting one layer, e.g., elev
el <- bei.extra$elev
plot(el)

el <- bei.extra[[1]]

# density map
dmap <- density(bei)
plot(dmap)
points(bei)

plot(el)
points(bei)






