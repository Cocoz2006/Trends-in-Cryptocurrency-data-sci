# Trends-in-Cryptocurrency-data-sci
library(tidyverse)
library(coinmarketcapr)
key <- "435281"
coinmarketcapr::setup(key)
cryptos <- get_crypto_listings( limit=50)
head(cryptos)
marketcap <- get_global_marketcap()
head(marketcap)
cryptos %>% head(10) %>%  select(c("id","name","symbol", "USD_price")) -> top10
cryptos
library(ggplot2)
ggplot(data = cryptos)+ geom_col(aes(x = name , y = USD_price))
