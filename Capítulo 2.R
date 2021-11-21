library(rmarkdown)
library(knitr)
library(stargazer)
library(kableExtra)
library(pacman)
plants <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-08-18/plants.csv')
actions <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-08-18/actions.csv')
threats <- readr::read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2020/2020-08-18/threats.csv')
data("msleep")
t1=msleep %>% group_by(vore) %>% 
  summarise_at("sleep_total",.funs = list(Promedio=mean,`Desviación Estádar`=sd)) %>% 
  dplyr::filter(!is.na(vore)) %>% 
  arrange(Promedio)
t2=msleep %>% dplyr::select(name,vore,sleep_total,brainwt)
