install.packages("lubridate")

lubridate::date()
lubridate::today()
lubridate::month(lubridate::today())

library(lubridate)
library(tidyverse)

date()
today()
month(today())

d <- '2011-12-12'
d2 <- ymd(d)
class(d)
class(d2)

Sys.Date()
Sys.sleep(20)
