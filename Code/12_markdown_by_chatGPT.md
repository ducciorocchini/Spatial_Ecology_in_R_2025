# Spatial Analysis with `spatstat` — Quick Summary

```r
# install.packages("spatstat")
library(spatstat)

# Point pattern
bei
plot(bei)
plot(bei, pch=15)
plot(bei, pch=15, cex=0.5)

# Ancillary rasters
bei.extra
plot(bei.extra)
el <- bei.extra$elev
plot(el)

# Kernel density map
dmap <- density(bei)
plot(dmap); points(bei)

plot(el); points(bei)

# Compare maps side-by-side / stacked
par(mfrow=c(1,2)); plot(dmap); plot(el)
par(mfrow=c(2,1)); plot(dmap); plot(el)

dev.off()   # reset graphics

# Color palettes
cl  <- colorRampPalette(c("green","red","blue"))(100)
cln <- colorRampPalette(c("chartreuse1","brown2","cyan","lightblue"))

plot(dmap, col=cl)
plot(dmap, col=cln)

# Compare palettes
dev.off()
par(mfrow=c(2,1))
plot(dmap, col=cl)
plot(dmap, col=cln)
```


<img width="480" height="480" alt="group_photo" src="https://github.com/user-attachments/assets/a9e2c9d9-3b8e-4b3e-a7a2-f427602a51ea" />
