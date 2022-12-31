############################################
# name: lott.R
# author: Yu Xia
# description: replicating lorr and mustard in R
# last updated: Feb 16, 2022
##############################################

library(haven)
library(fixest)
library(ggplot2)
library(tidyverse)

county_crime <- read_dta("D:/Xia Yu/夏宇的文档/读书/textbook/Econ/Causal Inference/Assignment/Lott and Mustard/data/raw/UpdatedCountyCrimeData-2010.dta")

# our outcome variable for now is ratmur

county_crime <- county_crime %>%
  filter(year<1993) %>%
  arrange(desc(year))

unique(county_crime$year)
# create a average murder rate (ratmur) per year for 1997 to 1992 and draw it in a time series using ggplot2

table_year = county_crime %>%
  group_by(year)%>%
  summarize(avg_mur=mean(ratmur, na.rm=T))

table_year

ggplot(table_year)+
  geom_line(aes(x=year, y=avg_mur))
