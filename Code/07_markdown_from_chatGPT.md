# R Workflow: Spatial Data Manipulation and Visualization

This document describes the process of loading, manipulating, and visualizing spatial data in R, using the `terra`, `sdm`, and `viridis` packages. We will cover tasks such as data extraction, subsetting, plotting, and working with environmental covariates like elevation, temperature, and precipitation.

## Setup

First, we need to install and load the required libraries:

```r
# Install necessary packages
# install.packages("sdm")
# install.packages("terra")
# install.packages("viridis")

# Load libraries
library(terra)
library(sdm)
library(viridis)
```
