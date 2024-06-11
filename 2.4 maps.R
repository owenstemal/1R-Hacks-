library(tidyverse)
sqrt(100)


1:10 %>% 
  map(.x = ., .f = sqrt)

1:10 %>% 
  map_dbl(.x = ., .f = sqrt)

##.x is unncessary 

1:10 %>% 
  map_dbl(sqrt)

1:10 %>% 
  map_chr(sqrt)


##map_df (for combining lots of files)
map_df()

list.files(path = '01 R Course/')
list.files(path = '01 R Course/', pattern = 'gz')
list.files(path = '01 R Course/', pattern = '20')
list.files(path = '01 R Course/', pattern = '20$')
## 20$ means ends with 20

list.files(path = '01 R Course/', pattern = '*20')
## *20 means starts with 20

list.files(path = '01 R Course/', pattern = '.csv$')
list.files(path = '01 R Course/', pattern = '.csv$', full.names = T)

## to apend them to one another

list.files(path = '01 R Course/', pattern = '.csv$', full.names = T) %>% 
  map_df(.x =., .f = read_csv, col_names = F, n_max = 100000)

weather_dat <- list.files(path = '01 R Course/', pattern = '.csv$', full.names = T) %>% 
  map_df(.x =., .f = read_csv, col_names = F, n_max = 100000)


## Part II

## formula style
weather_dat2 <- list.files(path = '01 R Course/', pattern = '.csv$', full.names = T) %>% 
  map_df(~ read_csv(file = ., col_names = F, n_max = 100000))

#grabbing 10 numbers from a normal distribution
rnorm(n = 10)

1:10 %>% 
  map(rnorm, n=20)

1:10 %>% 
  map(~ rnorm(n=20, mean = 5, sd = 1))

1:10 %>% 
  map(~rnorm(n=20, mean = 5, sd = 1)) %>% 
  map_dbl(mean)

1:10 %>% 
  map(~rnorm(n=20, mean = ., sd = 1)) %>% 
  map_dbl(mean)


1:10 %>% 
  map(~rnorm(n=1000, mean = 5, sd = .)) %>% 
  map_dbl(sd)

















