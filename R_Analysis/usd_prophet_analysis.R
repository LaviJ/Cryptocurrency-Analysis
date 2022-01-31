## Import Libraries
library(tidyverse)
library(prophet)

# Load in File
usd_raw <- read.csv(file.choose())

# Observe Matrix
head(usd_raw)

# Remove Unnecessary columns
usd <- usd_raw[,c(2, 6)]
head(usd)

# Rename column headers
names(usd)[names(usd) == "Date"] <- "ds"
names(usd)[names(usd) == "Close"] <- "y"
head(usd)

# Create model and future dataframe to store forecast
Model_usd <- prophet(usd)
Future_usd <- make_future_dataframe(Model_usd, periods = 365)
tail(Future_year_spy)

# Use model for annualized prediction
Forecast_usd <- predict(Model_usd, Future_usd)
tail(Forecast_usd[c("ds", "yhat", "yhat_lower", "yhat_upper")])

# Plot forecast
dyplot.prophet(Model_usd, Forecast_usd, main="US Dollar (USD)")

# Plot seasonality
prophet_plot_components(Model_usd, Forecast_usd)





