# Machine Learning Model

## Overview
Using data regarding cryptocurrency pricing, S&P 500 historical pricing, and news/twitter public sentiment this machine learning model would attempt to predict pricing, as well as predict future prices.

## Data Preprocessing
* Data would need to be interpreted as a time series by machine learning model for price prediction.

* Use StandardScaler for dataset normalization.

* Stadard test, train, and split to train model.

## Machine Learning Model
### Price Prediction

* Use Long-Short Term Memory Bidirectional Recurrant Neural Net for Price Prediciton, for both the S&P and top ten CryptoCurrencies.

* Use 2 LSTM Bidirectional Layers and a Dense Activation Layer

* Train between 50 and 100 Epochs.

* Basic model has been tested on existing source code, further optimization needed.

* Model is connected to the Mongo Database

### Sentiment Analysis for Price Prediction
* Use an NLP AI to determine sentiment around a particular digital asset or equity and use as either an additional data class in the price prediction metric through binary classification or as a stand alone deliverable for additional Price Movement Analysis outside of the machine learning spectrum.




