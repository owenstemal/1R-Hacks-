install.packages("rvest")
library(rvest)
library(tidyverse)

u <- "https://www.imdb.com/chart/moviemeter/?ref_=nv_mv_mpm&sort=num_votes%2Cdesc"

page <- read_html(x = u)


page %>% 
  html_nodes(".ipc-title__text") %>% 
  html_text(trim = T)

page %>% 
  html_nodes(".ipc-title-link-wrapper") %>% 
  html_text()

?html_nodes
  
page %>% 
  html_nodes("span + .sc-b189961a-8 kLaxqf cli-title-metadata-item") %>% 
  html_text()
