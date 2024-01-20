# Load necessary libraries
library(tidyverse)

# Load cryptocurrency data (replace 'your_dataset.csv' with the actual dataset file)
crypto_data <- read.csv("your_dataset.csv")

# Data manipulation and analysis

# Example: Create a time series plot of cryptocurrency prices
ggplot(crypto_data, aes(x = Date, y = Price, color = Coin)) +
  geom_line() +
  labs(title = "Cryptocurrency Prices Over Time",
       x = "Date",
       y = "Price",
       color = "Cryptocurrency") +
  theme_minimal()

# Save the plot as an image file (replace 'plot.png' with your desired filename)
ggsave("plot.png", plot = last_plot())

install.packages("crypto2")
library(crypto2)
library(ggplot2)
library(dplyr)

crypto2
#line
ggplot(crypto_data, aes(x = Date, y = Price)) +
  geom_line() +
  labs(title = "Crypto Price Over Time", x = "Date", y = "Price")
#chart
ggplot(crypto_data, aes(x = Date, y = Volume)) +
  geom_bar(stat = "identity", fill = "blue") +
  labs(title = "Crypto Volume Over Time", x = "Date", y = "Volume")
# table
crypto_data <- data.frame(
  Date = seq(as.Date("2022-01-01"), as.Date("2022-01-10"), by = "days"),
  Price = c(100, 105, 98, 110, 95, 105, 115, 120, 112, 108),
  Volume = c(500, 550, 480, 600, 450, 520, 580, 620, 560, 540)
)
crypto_dt <- as.data.table(crypto_data)
print(summary_table)

