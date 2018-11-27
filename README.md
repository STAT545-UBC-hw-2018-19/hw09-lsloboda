hw09 - make-activity
=============

The commit history of this repository reflects what a student might do as she works through [this activity](http://stat545-ubc.github.io/automation04_make-activity.html) from [STAT 545](http://stat545-ubc.github.io). This fully developed example shows:

  * How to run an R script non-interactively
  * How to use `make`
    - to record which files are inputs vs. intermediates vs. outputs
    - to capture how scripts and commands convert inputs to outputs
    - to re-run parts of an analysis that are out-of-date
  * The intersection of R and `make`, i.e. how to
    - run snippets of R code
    - run an entire R script
    - render an R Markdown document (or R script)
  * The interface between RStudio and `make`
  * How to use `make` from the shell
  * How Git facilitates the process of building a pipeline
  

## Overview
**This repo contains the files relevant to STAT 545 Homework 09.**
The homework file is located [here](https://github.com/STAT545-UBC-students/hw09-lsloboda/blob/master/hw09-lsloboda.md).

The seed code and data are from [Dean Attali's tutorial](https://deanattali.com/blog/building-shiny-apps-tutorial). 
The code can specifically be found [here](https://deanattali.com/blog/building-shiny-apps-tutorial/#12-final-shiny-app-code).

## Purpose

|    **Item**                                                  | **Status** |
|--------------------------------------------------------------|------------|
| Add an R and Rmd script to the existing **make** pipeline, such that:                           |
| Rmd outputs a document (at least)         | :thumbsup: |
| R script outputs anything                                   | :thumbsup: |
| Additions correspond to logical analysis                           | :thumbsup: |
| Makefile is updated (i.e. dependencies, outputs, instructions)                         | :thumbsup: |
| Makeall produces all outputs    | :thumbsup: |
| Makeclean removes all outputs                       | :thumbsup: |
| There are not useless/byproduct outputs                       | :thumbsup: |