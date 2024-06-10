library(tidyverse)
library(R.utils)
file.remove('Weather/')
unlink(x = 'Weather/', recursive = T)

dir.create(path = 'Weather')

'Weather/2017'

x <- 2017

paste0('Weather/', x)
rm(path_func)


#function creation
path_func <- function(x){
  dir.create(path = paste0("Weather/", x))
}

path_func(2020)
unlink(x = "Weather", recursive = T)

2017:2020 %>% walk(.x = ., .f = path_func)

myzipfile <- list.files(path = '01 R Course/', pattern = 'gz', full.names = T)
walk(.x = myzipfile, .f = safely(gunzip), remove=F)

read_csv(file = '01 R Course/2017.csv', col_names = F, n_max = 200000)
write_csv(x = , path = )

read_csv(file = '01 R Course/2017.csv', col_names = F, n_max = 200000) %>% 
  write_csv(x = ., path = 'Weather/2017/2017.csv')



read_n_write <- function(x){
  read_csv(file = paste0('01 R Course/', x, '.csv'), col_names = F, n_max = 200000) %>% 
    write_csv(x = ., path = paste0('Weather/', x, '/', x, '.csv'))
}

read_n_write(2018)

2017:2020 %>% 
  walk(.x = ., .f=read_n_write)










