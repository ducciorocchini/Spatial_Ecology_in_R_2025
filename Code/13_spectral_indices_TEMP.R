# Spectral indices

library(imageRy)
library(terra)

# Listing files
im.list()

# Importing data
m2006 <- im.import("matogrosso_ast_2006209_lrg.jpg")

# band 1 = NIR
# band 2 = red
# band 3 = green

im.plotRGB(m2006, r=1, g=2, b=3)
im.plotRGB(m2006, r=3, g=2, b=1)
im.plotRGB(m2006, r=3, g=1, b=2)

# Ancient data
m1992 <- im.import("matogrosso_l5_1992219_lrg.jpg")
im.plotRGB(m1992, r=1, g=2, b=3)

par(mfrow=c(1,2))
im.plotRGB(m1992, r=1, g=2, b=3)
im.plotRGB(m2006, r=1, g=2, b=3)

# Exercise: make a multiframe with 6 images in pairs with nir on the same component

# first row: m1992 and m2006 with r=1
# second row: m1992 and m2006 with g=1
# third row: m1992 and m2006 with b=1
# 3 rows per 2 columns

par(mfrow=c(3,2))
im.plotRGB(m1992, r=1, g=2, b=3)
im.plotRGB(m2006, r=1, g=2, b=3)

im.plotRGB(m1992, r=2, g=1, b=3)
im.plotRGB(m2006, r=2, g=1, b=3)

im.plotRGB(m1992, r=3, g=2, b=1)
im.plotRGB(m2006, r=3, g=2, b=1)

# Difference vegetation index in 1992
dvi1992 = m1992[[1]] - m1992[[2]]

dev.off()
cl <- colorRampPalette(c("darkblue", "yellow", "red", "black")) (100)
plot(dvi1992, col=cl)

# Difference vegetation index in 1992
dvi2006 = m2006[[1]] - m2006[[2]]
plot(dvi2006, col=cl)

par(mfrow=c(1,2))
plot(dvi1992, col=cl)
plot(dvi2006, col=cl)

# ndvi
ndvi1992 = dvi1992 / (m1992[[1]] + m1992[[2]])
ndvi2006 = dvi2006 / (m2006[[1]] + m2006[[2]])

plot(ndvi1992, col=cl)
plot(ndvi2006, col=cl)

plot(ndvi1992)
plot(ndvi2006)


# viridis


