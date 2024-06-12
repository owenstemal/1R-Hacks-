library(tidyverse)
library(rvest)

u <- 'https://www.zillow.com/baltimore-md-21231/luxury-homes/?searchQueryState=%7B%22pagination%22%3A%7B%7D%2C%22isMapVisible%22%3Atrue%2C%22mapBounds%22%3A%7B%22west%22%3A-76.60622396835328%2C%22east%22%3A-76.57983103164673%2C%22south%22%3A39.27376835873119%2C%22north%22%3A39.299809612482804%7D%2C%22usersSearchTerm%22%3A%2221231%22%2C%22regionSelection%22%3A%5B%7B%22regionId%22%3A66841%2C%22regionType%22%3A7%7D%5D%2C%22filterState%22%3A%7B%22sort%22%3A%7B%22value%22%3A%22priced%22%7D%2C%22ah%22%3A%7B%22value%22%3Atrue%7D%7D%2C%22isListVisible%22%3Atrue%2C%22mapZoom%22%3A15%7D'


pg <- read_html(u)


prices <- pg %>% 
  html_nodes('.dZqidi') %>% 
  html_text(trim = T) %>% 
  str_replace_all(pattern = "[$|,|\\s]", replacement = '') %>% 
  as.numeric()

address <- pg %>% 
  html_nodes('.property-card-link') %>% 
  html_text(trim = T) %>% 
  tolower()

realtor <- pg %>% 
  html_nodes(".eWCfWA") %>% 
  html_text(trim = T) %>% 
  tolower()

item_link <- pg %>% 
  html_nodes(".property-card-link") %>% 
  html_attr(x = ., name = 'href')

tibble(address, prices, realtor, item_link)

########

pg %>% 
  html_nodes('.cRQfHc a') %>% 
  html_attr('href')

links <- paste0('https://www.zillow.com/baltimore-md-21231/luxury-homes/', 1:2, '_p')


my_scraper <- function(x){
  pg <- read_html(x)
  
  prices <- pg %>% 
    html_nodes('.dZqidi') %>% 
    html_text(trim = T) %>% 
    str_replace_all(pattern = "[$|,|\\s|-]", replacement = '') %>% 
    as.numeric()
  
  address <- pg %>% 
    html_nodes('.property-card-link') %>% 
    html_text(trim = T) %>% 
    tolower()
  
  realtor <- pg %>% 
    html_nodes(".eWCfWA") %>% 
    html_text(trim = T) %>% 
    tolower()
  
  item_link <- pg %>% 
    html_nodes(".property-card-link") %>% 
    html_attr(x = ., name = 'href')
  
}

my_scraper(links[2])




