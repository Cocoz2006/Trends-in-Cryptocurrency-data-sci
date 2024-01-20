# crypto_analysis.R

# Install and load the crypto package
if (!requireNamespace("crypto", quietly = TRUE)) {
  install.packages("crypto")
}
library(crypto)

# Load the dataset from the crypto package
data(crypto_dataset)

# Perform basic analysis
summary(crypto_dataset)

# Create a simple plot
plot(crypto_dataset$Date, crypto_dataset$Price, type = "l", col = "blue", xlab = "Date", ylab = "Price", main = "Crypto Price Over Time")

