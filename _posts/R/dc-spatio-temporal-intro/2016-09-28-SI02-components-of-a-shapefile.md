---
layout: single
title: "Spatial Intro 02.1: Components of a Shapefile - Shp, Shx, DBF"
date:   2015-10-28
authors: [Leah A. Wasser]
contributors: [Megan Jones]
dateCreated: 2015-10-23
lastModified: 2016-09-28
packagesLibraries: [raster, rgdal, sp]
category: [self-paced-tutorial]
tags: [R, spatial-data-gis]
mainTag: spatial-data-management-series
workshopSeries: [spatial-data-management-series]
description: "This tutorial covers the basics of key data formats that may
contain spatial information including shapefile, GeoTIFF and .csv. It also
provides a brief overview of other formats that you may encounter when working
with spatial data."
code1: /R/dc-spatio-temporal-intro/02-spatial-data-formats.R
image:
  feature:
  credit:
  creditlink:
permalink: /R/components-of-a-shapefile
comments: true
---


Have you ever had a colleague send you a shapefile, only to discover that you,
can't open or view it in ANY tool? This tutorial covers the key files associated
with a shapefile and how to share shapefiles with colleagues.

**R Skill Level:** Beginner

<div id="objectives" markdown="1">

# Goals / Objectives

After reading this post, you will:

* Understand the key files associated with a shapefile: shp, dbf, shx.


### Install R Packages

* **raster:** `install.packages("raster")`
* **rgdal:** `install.packages("rgdal")`


****

### Additional Resources

* Wikipedia article on
<a href="https://en.wikipedia.org/wiki/GIS_file_formats" target="_blank">
GIS file formats.</a>

</div>



## One Dataset - Many Files

While text files often are self contained (one CSV) is composed of one unique file,
many spatial formats are composed of several files. A shapefile is created by
3 or more files, all of which must retain the same NAME and be
stored in the same file directory, in order for you to be able to work with them.



### Shapefile Structure

There are 3 key files associated with any and all shapefiles:

* **`.shp`:** the file that contains the geometry for all features.
* **`.shx`:** the file that indexes the geometry.
* **`.dbf`:** the file that stores feature attributes in a tabular format.

These files need to have the **same name** and to be stored in the same
directory (folder) to open properly in a GIS, `R` or `Python` tool.

Sometimes, a shapefile will have other associated files including:

* `.prj`: the file that contains information on projection format including
the coordinate system and projection information. It is a plain text file
describing the projection using well-known text (WKT) format.
* `.sbn` and `.sbx`: the files that are a spatial index of the features.
* `.shp.xml`: the file that is the geospatial metadata in XML format, (e.g.
ISO 19115 or XML format).

## Data Management - Sharing Shapefiles

When you work with a shapefile, you must keep all of the key associated
file types together. And when you share a shapefile with a colleague, it is
important to zip up all of these files into one package before you send it to
them!

NOTE: for a nice tutorial series on shapefiles in `R`, check out:
[*Introduction to Working With Vector Data in R* series](http://neondataskills.org/tutorial-series/vector-data-series/).
