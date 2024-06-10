library(tidyverse)
library(R.utils)


path_func <- function(x){
  dir.create(path = paste0("Weather/", x))
}

2013:2016 %>% walk(.x = ., .f = path_func)


list.files(path = '01 R Course/excercise data/', pattern = '.csv$', full.names = T)
from_path <- list.files(path = '01 R Course/', full.names = T)


mcopy_func <- function(k){
  from_path <- paste0('01 R Course/excercise data/', k)
}



dat_func <- function(x){
  read_csv(file = paste0('01 R Course/excercise data/', x, '.csv'), col_names = F, n_max = 100000) %>% 
    write_csv(x = ., path = paste0('Weather/', x, '/', x, '.csv'))
}

dat_func(2013)

2013:2016 %>% walk(.x = ., .f = dat_func)


from_path <- paste0('Weather/', y, '/',y, '.csv')
file.copy(from = from_path, to = 'Weather')

read_csv(file = paste0('01 R Course/', x, '.csv'), col_names = F, n_max = 200000) %>% 
  write_csv(x = ., path = paste0('Weather/', x, '/', x, '.csv'))



##bonus
rm_func <- function(x){
  file.remove(paste0('Weather/', x, '/', x, '.csv'))
}

2013:2016 %>% walk(rm_func)

copy_paste <- function(x){
  file.copy(from = paste0('01 R Course/excercise data/', x, '.csv'),
            to = paste0('Weather/', x, '/', x, '.csv'))
}

2013:2016 %>% walk(copy_paste)



