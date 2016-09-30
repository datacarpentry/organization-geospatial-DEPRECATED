---
title: "Spatial Intro 02: Intro to Spatial Data Formats -- Raster vs. Vector"
date:   2016-09-26
authors: [Leah A. Wasser]
contributors: [Megan Jones]
dateCreated: 2016-09-26
lastModified: 2016-09-30
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
permalink: /R/spatial-data-formats
comments: true
sidebar:
  nav: "spatial-intro"
author_profile: false
---


This tutorial covers the basics of key data formats that may contain spatial
information including shapefile, GeoTIFF and .csv. It also provides a brief
overview of other formats that you may encounter when working with spatial data.

**R Skill Level:** Beginner

<div class="notice--success" markdown="1">


# Goals / Objectives

After completing this activity, you will:

* Know stuff

### Install R Packages

* **raster:** `install.packages("raster")`
* **rgdal:** `install.packages("rgdal")`


****

### Additional Resources

* Wikipedia article on
<a href="https://en.wikipedia.org/wiki/GIS_file_formats" target="_blank">
GIS file formats.</a>

</div>


This lesson should be a basic intro to spatial data management and key things that need
to be considered (which we will discuss in this series)

## Get Started With Your Project -  File Organization

When we work with large, spatio-temporal data, it is a good idea to store large
data sets in a general data directory that you can easily access from many
projects. If you are working in a collaborative
environment, use a shared data directory.

## One Dataset - Many Files

While text files often are self contained (one CSV) is composed of one unique file,
many spatial formats contain several files. For instance, a shapefile (discussed
below) contains 3 or more files, all of which must retain the same NAME and be
stored in the same file directory, in order for you to be able to work with them.
We will discuss these issues as they related to two key spatial data formats -
.shp (shapefile) which stores **vector** data and .tif (geotiff) which stores
**raster** data in more detail, below.
