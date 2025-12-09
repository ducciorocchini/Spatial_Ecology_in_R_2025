# Classification process in R using imageRy

library(terra)
library(imageRy)
library(ggplot2)
install.packages("patchwork")
library(patchwork)

im.list()

sun <- im.import("Solar_Orbiter_s_first_views_of_the_Sun_pillars.jpg")

sunc <- im.classify(sun, num_clusters=3)

#--- Mato Grosso example

m1992 <- im.import("matogrosso_l5_1992219_lrg.jpg")
m2006 <- im.import("matogrosso_ast_2006209_lrg.jpg")

m1992c <- im.classify(m1992, num_clusters=2)
# class 1 = human related areas and water
# class 2 = forest

m2006c <- im.classify(m2006, num_clusters=2)
# class 1 = forest
# class 2 = human related areas and water

# frequencies
f1992 <- freq(m1992c)
tot1992 <- ncell(m1992c)

p1992 = f1992 * 100 / tot1992
# class 1 = human related areas and water = 17
# class 2 = forest = 83

f2006 <- freq(m2006c)
tot2006 <- ncell(m2006c)

p2006 = f2006 * 100 / tot2006
# class 1 = forest = 45
# class 2 = human related areas and water = 55

# building a dataframe
class <- c("Forest","Human")
y1992 <- c(83, 17)
y2006 <- c(45, 55)

tabout <- data.frame(class, y1992, y2006)
tabout

# final graph
p1 <- ggplot(tabout, aes(x=class, y=y1992, color=class)) + geom_bar(stat="identity", fill="white") + ylim(c(0,100))
p2 <- ggplot(tabout, aes(x=class, y=y2006, color=class)) + geom_bar(stat="identity", fill="white") + ylim(c(0,100))
p1  + p2
p1 / p2
