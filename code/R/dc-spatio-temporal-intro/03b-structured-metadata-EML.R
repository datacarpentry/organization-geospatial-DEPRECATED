## ----install-EML-package, results="hide", warning=FALSE------------------
# install R EML tools
library("devtools")
# install_github("ropensci/EML", build=FALSE, dependencies=c("DEPENDS", "IMPORTS"))

# load ROpenSci EML package
library("EML")

# load ggmap for mapping
library(ggmap)


# EML / data location
# http://harvardforest.fas.harvard.edu:8080/exist/apps/datasets/showData.html?id=hf001
# table 4 http://harvardforest.fas.harvard.edu/data/p00/hf001/hf001-04-monthly-m.csv

## ----read-eml, warning=FALSE, message=FALSE------------------------------
# import EML from Harvard Forest Met Data

# note: the original xml file is below commented out
# eml_HARV <- read_eml("http://harvardforest.fas.harvard.edu/data/eml/hf001.xml")
# import a truncated version of the eml file for quicker demonstration
eml_HARV <- read_eml("https://lwasser.github.io/R-Spatio-Temporal-Data-and-Management-Intro/hf001-revised.xml")

# view size of object
object.size(eml_HARV)

# view the object class
class(eml_HARV)


## ----view-eml-content----------------------------------------------------
# view the contact name listed in the file

eml_HARV@dataset@creator

# view information about the methods used to collect the data as described in EML
eml_HARV@dataset@methods



## ----map-location, warning=FALSE, message=FALSE--------------------------

# grab x coordinate from the coverage information
XCoord <- eml_HARV@dataset@coverage@geographicCoverage[[1]]@boundingCoordinates@westBoundingCoordinate@.Data

# grab y coordinate from the coverage information
YCoord <- eml_HARV@dataset@coverage@geographicCoverage[[1]]@boundingCoordinates@northBoundingCoordinate@.Data

# map <- get_map(location='Harvard', maptype="terrain")

# plot the NW corner of the site.
map <- get_map(location='massachusetts', maptype="toner", zoom=8)

ggmap(map, extent=TRUE) +
  geom_point(aes(x=as.numeric(XCoord), y=as.numeric(YCoord)),
             color="darkred", size=6, pch=18)


## ----challenge-code-metadata, echo=FALSE---------------------------------
# Metadata Notes from hf001_10-15-m_Metadata.txt
# 1. 2001-2015
# 2. Emery Boos - located at the top of the document, email is available
# 3. a lat long is available in the metadata at the top, we see the location # described as Prospect Hill Tract (Harvard Forest).
# 4. 342 m elevation, the veg type is not clear in the metadata
# 5. Found in the methods: Delayed melting of snow and ice (caused by problems with rain gage heater or heavy precipitation) is noted in log - daily values are corrected if necessary but 15-minute values are not. The gauge may underestimate actual precipitation under windy or cold conditions.
# 6. this could be a discussion. things like units, time zone, etc are all useful
# if accessed programmatically


