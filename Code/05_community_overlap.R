# This code is analysing the temporal overlap between species

# install.packages("overlap")

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

# seeing the overlap between times of different species
overlapPlot(tigertime, macaquetime)



#----

# Get the unique species names
species_list <- unique(kerinci$Sps)

# Set up the plotting area with a grid (adjust n and m based on the number of species)
par(mfrow = c(3, 3))  # Example: 3 rows and 3 columns (adjust as needed)

# Loop through each species and create density plots
for (species in species_list) {
  # Subset data for the current species
  species_data <- kerinci[kerinci$Sps == species, ]
  
  # Create a density plot for the 'circ' variable of the current species
  plot(density(species_data$circ), 
       main = paste("Density Plot of Circumference for", species), 
       xlab = "Circumference")
}
