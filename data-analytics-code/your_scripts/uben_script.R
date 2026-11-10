library(tidyverse)

df_milck <- read_csv('data-analytics-code/data/mds12_schoko_milch.csv')

df_milck |> 
  glimpse()

df_milck |> 
  select(v023frei_21aromen, q002geburt)

df_milck |> 
  select(starts_with('v'))


??df_milck




df_milck_compact <- readRDS('data-analytics-code/data/milk_survey_compact.rds')


df_milck_compact |> 
  
  filter(age >= 50) |> 
  filter(diet != 'omnivore') |> 
    select(age, diet) |> 
      arrange(age)

df_milck_compact |> 
  drop_na(organic_share)





