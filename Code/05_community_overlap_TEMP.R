# Code to estimate the temporal overlap between species

# install.packages("overlap")

library(overlap)

data(kerinci)

# Exercise: show the first 6 rows of kerinci
head(kerinci)

kerinci

summary(kerinci)

kerinci$Timecirc <- kerinci$Time * 2 * pi

# tiger data
tiger <- kerinci[kerinci$Sps=="tiger",]
tigertime <- tiger$Timecirc

densityPlot(tigertime)

# macaque
# Exercise: select the data for the macaque and assign them to a new ojbect 
macaque <- kerinci[kerinci$Sps=="macaque",]

# Exercise: select the time for the macaque data and make a density plot
macaquetime <- macaque$Timecirc

densityPlot(macaquetime)

overlapPlot(tigertime, macaquetime)


#----- SQL
macaque <- kerinci[kerinci$Sps=="macaque",]
summary(macaque)

nomacaque <- kerinci[kerinci$Sps!="macaque",]
summary(nomacaque)



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

