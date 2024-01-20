# Trends-in-Cryptocurrency-data-sci

library(tidyverse)
crypto_data <- read.csv("path/to/cryptocurrency_data.csv")
ggplot(crypto_data, aes(x = Date, y = Price, color = Coin)) +
  geom_line() +
  labs(title = "Cryptocurrency Trends",
       x = "Date",
       y = "Price",
       color = "Cryptocurrency") +
  theme_minimal()
  ggsave("path/to/plot.png", plot = last_plot())

