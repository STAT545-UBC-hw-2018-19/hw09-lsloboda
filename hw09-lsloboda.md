hw09-lsloboda
================

-   [Automating a Pipeline](#automating-a-pipeline)
    -   [Objective](#objective)
    -   [Method](#method)
    -   [Scripts](#scripts)
    -   [Makefile](#makefile)
    -   [Resources](#resources)

Automating a Pipeline
=====================

Objective
---------

The objective of the assignment is to add an R file and an Rmd file to a pre-seeded pipeline, originally found [here](https://github.com/STAT545-UBC/make-activity).

Method
------

I added the following files to the pipeline:

-   letterCount.R, which counts the number of each letter in word.txt
-   word\_analysis\_report.Rmd, which outputs an .html and .md report of the results of letterCount.R

I updated the Makefile by:

-   Adding instructions to clean the new files
-   Adding instructions to run the new files
-   Adding new dependencies, where necessary

Scripts
-------

The script letterCount.R counts the number of letters in all words in word.txt and write them to a .tsv as a data frame:

``` r
#words <- readLines("words.txt")
#letterCount <- sapply(letters, function(x) x<-sum(x == unlist( strsplit( words, "" )) ))
#str(letterCount)

#write.table(letterCount, "letterCount.tsv", sep = "\t") #automatically converts to a data frame
```

The markdown file word\_analysis\_report.Rmd output the results summary from letterCount.R:

``` r
#title: "word_analysis_report"
#output:
#  html_document:
#    keep_md: yes

#suppressPackageStartupMessages(library(readr))
#suppressPackageStartupMessages(library(knitr))
#suppressPackageStartupMessages(library(tidyverse))

#letterCount <- read.table("letterCount.tsv")
#kable(letterCount, col.names = "Count")
```

Makefile
--------

The makefile is updated with instructions regarding the new files, including adding new dependencies, as well as running and cleaning the new files:

``` r
#all: report.html word_analysis_report.html

# clean:
#   rm -f words.txt histogram.tsv histogram.png report.md report.html letterCount.tsv word_analysis_report.html word_analysis_report.md
# 
# report.html: report.rmd histogram.tsv histogram.png
#   Rscript -e 'rmarkdown::render("$<")'
# 
# histogram.png: histogram.tsv
#   Rscript -e 'library(ggplot2); qplot(Length, Freq, data=read.delim("$<")); ggsave("$@")'
#   rm Rplots.pdf
# 
# histogram.tsv: histogram.r words.txt
#   Rscript $<
# 
# #words.txt: /usr/share/dict/words
# # cp $< $@
# 
# words.txt:
#   Rscript -e 'download.file("http://svnweb.freebsd.org/base/head/share/dict/web2?view=co", destfile = "words.txt", quiet = TRUE)'
# 
# letterCount.tsv: letterCount.R words.txt
#   Rscript $<
# 
# word_analysis_report.html: word_analysis_report.Rmd letterCount.tsv
#   Rscript -e 'rmarkdown::render("$<")'
```

Although very simple tasks are used in this example, automating a pipeline is very handy to save time when it is necessary to re-run the same scripts often and in a particular order.

Resources
---------

I had trouble getting make to work on Windows. It ended up being a PATH problem, which I fixed by uninstalling and re-installing RTools with the automatic PATH setup, thanks to help from this forum post: <https://support.rstudio.com/hc/en-us/community/posts/209092218-Make-is-not-recognized-as-an-internal-or-external-command>

<https://support.rstudio.com/hc/en-us/articles/200486498-Package-Development-Prerequisites>

<https://cran.rstudio.com/bin/windows/Rtools/>

<http://www.sthda.com/english/wiki/fast-writing-of-data-from-r-to-txt-csv-files-readr-package>