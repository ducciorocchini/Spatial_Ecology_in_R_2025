# This is an example of code for the exam

## How to import external data in R

The packages needed in this script are the following:
```r
library(terra) # managing raster and vector data
library(imageRy) # analysing RS data
```

In order to import data in R we should set the working directory:

```r
setwd("~/Downloads/")
```

To check for the folder you can make use of:
```r
getwd()
```

The import of the data is done by:
```r
group <- rast("image.JPG")
```

If you receive erros, check that the path is correct and that the image is inside the folder you are using as a working directory

To get info on the image, digit its name by:
```r
group
```

## Data visualization 

In order to plot the image we will use the RGB scheme:
```r
# layer 1 = red wavelength, layer 2 = green wavelength, layer 3 = blue wavelength
im.plotRGB(group, r=1, g=2, b=3)
```

The image is flipped, so I can solve the problem by the flip() function:
```r
group <- flip(group)
im.plotRGB(group, r=1, g=2, b=3)
```

The output plot can be exported by the png() function
```r
png("group_photo.png")
im.plotRGB(group, r=1, g=2, b=3)
dev.off()
```

The output image looks like:

<img width="480" height="480" alt="group_photo" src="https://github.com/user-attachments/assets/a2580c99-7cfc-4c75-b2e1-6792857e55fe" />

Let's invert the bands to create a false color image:
```r
png("group_photo_false.png")
im.plotRGB(group, r=2, g=1, b=3)
dev.off()
```

The flase color image is something like:

<img width="480" height="480" alt="group_photo_false" src="https://github.com/user-attachments/assets/1ab19f2e-dd3d-4afd-abe9-199071a18be3" />


