library(ggplot2)
library(tidyverse)


df <- readRDS('data-analytics-code/data/milk_survey_compact.rds')

df |> 
  drop_na(diet) |> 
  arrange(desc()) |> 
  
  ggplot() +
  aes(y = diet) +
  geom_bar()
  
