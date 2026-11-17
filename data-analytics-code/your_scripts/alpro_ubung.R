library(tidyverse)

survey <- readRDS('data-analytics-code/data/milk_survey_compact.rds')

survey |> 
  glimpse()

survey |> 
  select(price_too_expensive) |> 
  
    arrange(price_too_expensive)


survey |> 
  drop_na(price_too_expensive, diet) |> 
  
    filter(price_too_expensive <= 10) |> 
  
      group_by(diet) |> 
        
        summarise(
          avg_pricve = mean(price_too_expensive),
          n = n()
          ) |> 
            arrange(desc(avg_pricve))
      

survey |> 
  count(price_too_expensive)






df_3 <- readRDS('data-analytics-code/data/milk_survey_compact.rds')

df_3 |> 
  drop_na(price_too_expensive, diet) |> 
  
    filter(price_too_expensive <= 10) |> 
  
        mutate(
          price_class = case_when(
            price_too_expensive < 2 ~ 'under 2 EUR',
            price_too_expensive < 2.49 ~ '2 to 249 EUR',
            price_too_expensive >= 2.5 ~ '2.50 or More'
          )
        ) |> 
      
            mutate(price_class = factor(price_class)) |> 
  
      
              select(id, milk_brand, price_too_expensive, price_class)



