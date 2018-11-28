---
title: "word_analysis_report"
output:
  html_document:
    keep_md: yes
---



We using a script to count how many words start with every letter in *letterCount.R*. We report the output here in table format.
First we load the libraries:


```r
suppressPackageStartupMessages(library(readr))
suppressPackageStartupMessages(library(knitr))
suppressPackageStartupMessages(library(tidyverse))
```



```r
letterCount <- read.table("letterCount.tsv")
kable(letterCount, col.names = "Count")
```

       Count
---  -------
a     197044
b      39054
c     100962
d      67266
e     234490
f      23696
g      46089
h      63238
i     200594
j       2685
k      15628
l     129431
m      68815
n     158098
o     170107
p      75886
q       3657
r     160307
s     137173
t     151286
u      87181
v      19820
w      13538
x       6841
y      51544
z       8232
