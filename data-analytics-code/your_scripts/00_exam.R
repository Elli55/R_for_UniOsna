###Lets doi something ###


prise <- 1.79
litr_per_week <- 3L

for_year <-  (prise * litr_per_week) * 52

discount <- for_year - ((prise = 1.09) * litr_per_week * 52)

diff <- round(discount,0)
diff

week_diff <- 1.09 * litr_per_week

diff %/% week_diff



# shopping bonn ### 

library(dplyr)
library(tidyverse)

items <- c("Milch", "Haferdrink", "Brot", "Käse", "Äpfel", "Schokolade")
prices <- c(1.09, 1.79, 2.49, NA, 0.45, 1.29)
amounts <- c(3, 2, 1, 1, 6, 2)


df_shopping <- data.frame(article = items, price_euro = prices, amount_stc = amounts)

sum(df_shopping$price_euro * df_shopping$amount_stc, na.rm = TRUE)




df_shopping[df_shopping['price_euro'] > 1.5,]

df_shopping |> 
  drop_na(price_euro) |> 
  filter(price_euro > 1.5) |> 
  # subset(price_euro > 1.5) |> 
  
  nrow()


specif <- df_shopping |> 
  mutate(total__cost = price_euro * amount_stc) |> 
  filter(article %in% c('Milch', 'Haferdrink')) |> 
  glimpse()  |> 
  pull(total__cost) |> 
  sum()

specif  

total <- df_shopping |> 
  mutate(total_cost = price_euro * amount_stc) |> 

  
  