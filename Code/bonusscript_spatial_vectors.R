# creating points
# Load the terra package
library(terra)

# Real coordinates
x <- c(50000, 505000, 607000, 708000)
y <- c(4500000, 4465000, 4677000, 4708000)
occurrence <- c(1,1,1,0)

# Dataframe
df <- data.frame(x=x, y=y, occurrence=occurrence)

# spatvector
spat_vector <- vect(df, geom = c("x", "y"))
plot(spat_vector)
     
#------

# Virtual species

# Set seed for reproducibility
set.seed(42)

# Generate random X and Y coordinates
num_points <- 10
X <- sample(1:10, num_points, replace = TRUE)  # Random x-coordinates between 1 and 10
Y <- sample(1:10, num_points, replace = TRUE)  # Random y-coordinates between 1 and 10

# Generate random occurrence values (0 or 1)
occurrence <- sample(c(0, 1), num_points, replace = TRUE)

# Create a data frame with X, Y, and occurrence
df <- data.frame(x = X, y = Y, occurrence = occurrence)

# Create a SpatVector with the points and occurrence values
spat_vector <- vect(df, geom = c("x", "y"))

# Add the occurrence as an attribute
spat_vector$occurrence <- df$occurrence

# View the SpatVector
spat_vector

