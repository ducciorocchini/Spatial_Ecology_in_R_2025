# Code for performing time series analysis on satellite data

library(terra)
library(imageRy)
library(ggridges)
library(ggplot2)


# listing files
im.list()

EN01 <- im.import("EN_01.png")
EN01 <- flip(EN01)

EN01
# The radiometric resolution of EN01 is 8 bit.

EN13 <- im.import("EN_13.png")
EN13 <- flip(EN13)
plot(EN13)

diffEN <- EN01[[1]] - EN13[[1]]
plot(diffEN)

# Ridgeline plots

im.ridgeline(stack, scale=2)



