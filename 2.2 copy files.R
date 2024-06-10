
list.files(path = 'Weather/2017/', full.names = T)
from_path <- list.files(path = 'Weather/2017/', full.names = T)


file.copy(from = from_path, to = 'Weather/')

y <- 2017:2020
paste0('Weather/', y, '/',y, '.csv')
##this creates the vectors for the walk()

my_copy_function <- function(x){
  from_path <- paste0('Weather/', y, '/',y, '.csv')
  file.copy(from = from_path, to = 'Weather')
}

my_copy_function(2018)
##function to find path

library(tidyverse)
walk(.x = 2017:2020, .f = safely(my_copy_function) )


for(i in 2017:2020){
  my_copy_function(i)
}


























