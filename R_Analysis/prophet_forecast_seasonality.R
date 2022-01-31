# Load Packages
library(prophet)
library(tidyverse)

#Load Data
bitcoin <- read.csv(file.choose())
head(bitcoin)

# Drop unnecessary columns
bitcoin$X <- NULL
head(bitcoin)

# Rename columns for prophet forecast
names(bitcoin)[names(bitcoin) == "Date"] <- "ds"
names(bitcoin)[names(bitcoin) == "Close"] <- "y"


# Create Model
Model_bitcoin <- prophet(bitcoin)
Future_bitcoin <- make_future_dataframe(Model_bitcoin, periods = 365)

# Check forecast Dataframe
tail(Future_bitcoin)

# Forecast with the Model
Forecast_bitcoin <- predict(Model_bitcoin, Future_bitcoin)
tail(Forecast_bitcoin[c("ds", "yhat", "yhat_lower", "yhat_upper")])

# Plot Forecast
dyplot.prophet(Model_bitcoin, Forecast_bitcoin, main="Bitcoin (BTC)")

prophet_plot_components(Model_bitcoin, Forecast_bitcoin)

# Load SPY Data
spy_raw <- read.csv(file.choose())
head(spy_raw)

# Update the SPY dataframe to only include the variables necessary
spy <- spy_raw[,c(1, 5)]
head(spy)

# Rename Columns
names(spy)[names(spy) == "Date"] <- "ds"
names(spy)[names(spy) == "Close"] <- "y"

# Create Model Instance
Model_spy <- prophet(spy)
Future_spy <- make_future_dataframe(Model_spy, periods = 365)
tail(Future_spy)

# Forecast with the Model
Forecast_spy <- predict(Model_spy, Future_spy)
tail(Forecast_spy[c("ds", "yhat", "yhat_lower", "yhat_upper")])

# Plot forecast
dyplot.prophet(Model_spy, Forecast_spy, main="SPY (S&P 500 ETF)")

# Plot Seasonality
prophet_plot_components(Model_spy, Forecast_spy)



