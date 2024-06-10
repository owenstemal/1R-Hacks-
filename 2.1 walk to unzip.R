library(R.utils)
library(tidyverse)
##library(purrr)

walk()

myzipfile <- list.files(path = '01 R Course/', pattern = 'gz', full.names = T)

rm(i)
rm(myzipfile)
myzipfile

walk(.x = myzipfile, .f = gunzip)
##if you do this then you will lose the .zip files (no option to do remove=F)

##walk takes x (vetor) and f(function) but also can be amended with a comma 
walk(.x = myzipfile, .f = gunzip, remove=F)

##to skip the file (2017) that is already unzipped

walk(.x = myzipfile, .f = safely(gunzip), remove=F)














