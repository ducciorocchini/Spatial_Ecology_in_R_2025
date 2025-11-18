# Code for graph theory in ecology

# install.packages("igraph") # run once
library(igraph)

species <- c("Algae", "Zooplankton", "Small Fish", "Large Fish", "Bird")

predator <- c("Zooplankton", "Small Fish", "Large Fish", "Bird", "Bird")
prey <- c("Algae", "Zooplankton", "Small Fish", "Small Fish", "Large Fish")

interactions <- data.frame(predator, prey)




