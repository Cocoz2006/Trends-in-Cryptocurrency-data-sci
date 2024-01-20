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

