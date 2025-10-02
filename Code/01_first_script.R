2 + 3

# this is a comment, R will not read this but humans will!

kat <- 2 + 3
kat

deanna <- 5 + 7
deanna

# instead of 2 + 3 + 5 + 7
kat + deanna

# instead of (2 + 3) * (5 + 7)
kat * deanna

ade <- c(10, 20, 50, 80, 95) # these are the samples of Adelaide containing insect species richness
lara <- c(3, 5, 15, 27, 30) # these are species nunbers of different taxa found by different scientists

# Is the number of insect species related to the number of species of diffrerent taxa?

plot(lara, ade)

# Let's put different arguments
plot(lara, ade, xlab="all taxa species richness", ylab="insects species richness")

plot(lara, ade, xlab="all taxa species richness", ylab="insects species richness", col="blue")

plot(lara, ade, xlab="all taxa species richness", ylab="insects species richness", col="blue", pch=19)

plot(lara, ade, xlab="all taxa species richness", ylab="insects species richness", col="blue", pch=19, cex=2)

plot(lara, ade, xlab="all taxa species richness", ylab="insects species richness", col="blue", pch=19, cex=.5)
