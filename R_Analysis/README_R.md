# R_Analysis

## Prophet: How it works? (Description from Meta Research)
At its core, the Prophet procedure is an additive regression model with four main components:

* A piecewise linear or logistic growth curve trend. Prophet automatically detects changes in trends by selecting changepoints from the data.

* A yearly seasonal component modeled using Fourier series.

* A weekly seasonal component using dummy variables.

* A user-provided list of important holidays.


## Methods
* Using the R prophet package to make a price forecast and analyze seasonality trends in Bitcoin, USD, and the S & P 500.

* Prophet was used to create an additive regression model to forecas 365 days past the end of the modeled time series.  Seasonality data was analyzed using the prophet_plot_components() function that is built into the library.

### Datasets
* SPY (S&P 500 ETF) 5 years
* Bitcoin (BTC) 5 years
* United States Dollar (USD) 5 years


## Results
Graphical visualizations show the discrepancies in seasonality between USD, Bitcoin, and the S&P 500.  The graphs identify unique differences between all of the assets listed above, with USD and the S&P being much more similiar.  This could be due to differences between regulated and deregulated asset classes.





