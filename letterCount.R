#Count number of letters in a word

#suppressPackageStartupMessages(library(readr))

words <- readLines("words.txt")
letterCount <- sapply(letters, function(x) x<-sum(x == unlist( strsplit( words, "" )) ))
str(letterCount)

#write_tsv(letterCount, "letterCount.tsv")
write.table(letterCount, "letterCount.tsv", sep = "\t") #automatically converts to a data frame
