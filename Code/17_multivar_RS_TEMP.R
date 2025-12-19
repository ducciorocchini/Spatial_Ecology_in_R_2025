library(imageRy)
library(terra)


im.list()

sent <- im.import("sentinel.png")

pairs(sent)

sentpc <- im.pca(sent)
pc1 <- sentpc[[1]]

pc1sd <- focal(pc1, matrix(1/9, 3, 3), fun=sd)
plot(pc1sd)
