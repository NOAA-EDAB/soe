
image.dir<- here::here("docs/images")
#Default Rmd options
knitr::opts_chunk$set(echo = FALSE,
                      message = FALSE,
                      warning = FALSE,
                      fig.align = 'center') #allows for inserting R code into captions

#Plotting and data libraries
library(ggplot2)
library(dplyr)
library(tidyr)
library(ecodata)
library(here)
library(kableExtra)
library(ggrepel)
library(stringr)
library(patchwork)
library(grid)
library(heatwaveR)

#General inline text input for report

#Council
council <- "New England Fishery Management Council"
council_abbr <- "NEFMC"

#Region identifiers
epu <- "Geroges Bank"
epu_abbr <- "GB"
region <- "New England"
region_abbr <- "NE" #Some commercial data organized by "MA" or "NE" regions, not by EPU 

############################# GIS SETUP ######################################################

#GIS libraries
library(sf)
library(rgdal)
library(raster)
#CRS
crs <- "+proj=longlat +lat_1=35 +lat_2=45 +lat_0=40 +lon_0=-77 +x_0=0 +y_0=0 +datum=NAD83 +no_defs +ellps=GRS80 +towgs84=0,0,0"

#EPU shapefile
epu_sf <- ecodata::epu_sf %>% 
  filter(EPU %in% c("MAB","GB","GOM"))

#Map line parameters
map.lwd <- 0.4

# Set lat/lon window for maps
xmin = -77
xmax = -65
ymin = 36
ymax = 45
xlims <- c(xmin, xmax)
ylims <- c(ymin, ymax)

#Time series constants
shade.alpha <- 0.3
shade.fill <- "lightgrey"
lwd <- 1
pcex <- 2
trend.alpha <- 0.5
trend.size <- 2
hline.size <- 1
hline.alpha <- 0.35
hline.lty <- "dashed"
label.size <- 5
hjust.label <- 1.5
letter_size <- 4
feeding.guilds <- c("Apex Predator","Piscivore","Planktivore","Benthivore","Benthos")
x.shade.min <- 2012
x.shade.max <- 2022
#Function for custom ggplot facet labels
label <- function(variable,value){
  return(facet_names[value])
}
