# install.packages("igraph") # run once
library(igraph)

species <- c("Algae", "Zooplankton", "Small Fish", "Large Fish", "Bird")

interactions <- data.frame(
  predator = c("Zooplankton", "Small Fish", "Large Fish", "Bird", "Bird"),
  prey     = c("Algae", "Zooplankton", "Small Fish", "Small Fish", "Large Fish")
)

# Create graph
g <- graph_from_data_frame(interactions, vertices = species, directed = TRUE)

# Plot with clear labels
plot(
  g,
  layout = layout_with_fr,
  vertex.size = 30,
  vertex.color = "lightblue",
  vertex.label.color = "black",
  vertex.label.cex = 1,
  edge.arrow.size = 0.5,
  main = "A Simple Ecological Network"
)

# Stats
cat("\nNumber of species (nodes):", vcount(g))
cat("\nNumber of interactions (edges):", ecount(g))


 
