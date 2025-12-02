# Available data:

## Earth Observatory (NASA):
https://earthobservatory.nasa.gov/

Video: https://www.youtube.com/watch?v=_aDeRFqZVgA

## Sentinel-2 data (ESA, 10m):
https://www.youtube.com/watch?v=KA2L4bDmo98

## Landsat (30m) and MODIS (>500m) data (NASA):
https://www.youtube.com/watch?v=JN-P04Dkx48

# Steps:

## Step 1:
Download an image from the network

## Step 2:
Store iot in your computer

## Step 3:
Set the working directory:
setwd("yourpath")

## Step 4:
Import the data:

library(terra)

name <- rast("yourdata_in_the_working_directory")
