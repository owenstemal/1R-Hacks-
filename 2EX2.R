
library(tidyverse)
library(R.utils)


list.files(path = '01 R Course/excercise data/')

myzipfile <- list.files(path = '01 R Course/excercise data/', full.names = T)

myzipfile


for(k in 1:4){
  print(myzipfile[k])
  gunzip(myzipfile[k], remove=F)
}

file.remove('01 R Course/excercise data/2013.csv')

rm_files <- list.files(path = '01 R Course/excercise data/', pattern = 'csv$', full.names = T)

walk(.x = rm_files, .f = file.remove)

walk(.x = myzipfile, .f = safely(gunzip), remove=F)






