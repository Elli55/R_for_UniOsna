library(tidyverse)


rewe_df <- read.csv('https://hands-on-computer-science.de/media/datasets/rewe_products.csv')

str(rewe_df)

rewe_df |> 
  select(product_category) |> 
  count(product_category)

rewe_df |> 
  filter(product_category == 'Getränke' ) |> 
  
  select(product_name)


rewe_df |> 
  
  mutate(calculated_energie = fat_in_gram * 9 + carbs_in_gram * 4 + protein_in_gram * 4) |>
  
    mutate(energie_diff = abs(energy_in_kcal -  calculated_energie )) |> 
  
  
      filter(energie_diff > 100) |> 
  
        select(product_name, energy_in_kcal, energie_diff)


rewe_df |> 
  
  drop_na(rewe_df) |> 
  
    group_by(bio)







