# This code is related to the possibility to use AI to speed up coding practices

# Example with a for loop, let's take the code from the overlap example

# First: teach the process to chatGPT - example: density plots for two species

library(overlap)

data(kerinci)

circulartime <- kerinci$Time * 2 * pi

kerinci$circ <- kerinci$Time * 2 * pi

tiger <- kerinci[kerinci$Sps=="tiger",]

tigertime <- tiger$circ
densityPlot(tigertime)

densityPlot(tiger$circ)

# Exercise: repeat the graph for the macaque

macaque <- kerinci[kerinci$Sps=="macaque",]
macaquetime <- macaque$circ

densityPlot(macaque$circ)

# Now ask chatGPT to speed up the process

# State something like:
# I would like to build a for loop to make the density plot of all of the species together in a multiframe


# Get unique species names
species_list <- unique(kerinci$Sps)

# Set up a multi-frame plot (e.g., 2 rows, 2 columns)
# Adjust the number of rows and columns based on the number of species
par(mfrow = c(2, 2))  # Change this if you have more species

# Loop through species list and plot density
for (species in species_list) {
  # Subset data for the current species
  species_data <- kerinci[kerinci$Sps == species, ]
  
  # Create the density plot for the current species
  densityPlot(species_data$circ, 
              main = paste("Density Plot: ", species),
              col = "blue", 
              lwd = 2, 
              xlab = "Circumference Time (radians)", 
              ylab = "Density")
}
