# my first github synced script
library(renv)
#restore the versions of the packages used to develop this project
renv::restore()
# remember to use pull in git tab to get changes from github
# load libraries
library(tidyverse)


x <- c(1,2,3,4,5)
y <- c(1,4,3,6,9)
data <- data.frame (x,y)
data
# %>% is changed into |>, both work
fig01 <-data |> ggplot(aes(x=x,y=y))+
  geom_point()+
  geom_smooth(method="lm")
fig01
ggsave("./figures/fig01.png", plot=fig01, width=1920, height=1068, units="px") # this is to save your images with fixed proportions

