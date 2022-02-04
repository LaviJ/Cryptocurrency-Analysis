## Machine Learning Model Segment 2 (Role Triangle by Richard)

### Explanation of Model Choice
A **bidirectional long short-term memory (BI-LSTM)** model was selected because it runs the inputs two ways. It runs the inputs from past to future and future to past. Whereas a unidirectional LSTM only preserves information from the past because the only inputs it has seen are from the past.
Bidirectional differs from unidirectional in that the LSTM that runs backwards preserves information from the future, and using the two hidden states combined, you are able at any point in time to preserve information from both past and future. Bidirectional LSTMs tend to show strong results as they can understand context better.


### Preliminary Data Preprocessing

The data is extracted from the source via free authenticated API calls to cryptocompare.com. Data are then fed into a MongoDB database to be retrieved by the machine learning routine.  The Training notebook pulls data from the database and performs a few preprocessing tasks: Rows with zeros are removed. (Data on coins other than BTC will contain zeros until the genesis time of the coin.  Those rows are dropped from the dataset so as to not confuse the algorithm into training on empty data.) The first few years of data is dropped. The following data were retained: close in $ (USD)  The high and low are averaged to obtain a "mid" price value for each datapoint, alongside the period closing value. To produce a simpler model, the trade volume data were stripped from the dataframe. The simpler model, while shallower as a result, is optimized to train solely on the price movements.

### Preliminary Feature Engineering

#### Description of dataset

The dataset comprises hourly price data for each of the 10 selected crypto ticker symbols. This model will utilize hourly data as a method of obtaining signalling with a Δt suitable for making a 4-day-out price trend prediction.  The model can potentially analyze the entire history of each coin, as the datasets all go back to the same point at the start of the BTC blockchain. The entirety of crypto history goes back to January 3rd 2009, 18:15:05h UTC, also known as the Unix Epoch 1231006505, the timestamp of the so-called "Genesis Block", the un-deleteble hard-coded begining of the Bitcoin blockchain. Our dataset begins at the beginning of that hour, the Unix Epoch 1231005600.




#### Preliminary Feature Selction
 


###### Single coin analyzed

In each trained model, only the price data of a single cryptocurrency ticker symbol will be analyzed.  This will make the trained model an expert at the particular coin under test.

###### Financially-significant time-periodic waveforms

The following time periods are reasonably tied to financially significant calendar-based event cycles. These 8 normalized waveforms are loaded into columns beside the two price point columns:
* Daily sine, Daily cosine wave
* Quarterly sine, Quarterly cosine waves
* Annual sine and cosine waves

###### Channel Weighting
The Daily signals are attenuated by .01, while the quarterly and annual waveforms are amplified by 2x and 4x respectively.  The close and mid output are also multiplied by 2x and 3x, respectively.


###### Normalization of price data

The mean and one standard deviation are removed from the price data, as this will optimize attention to the centroid of the price fluctuations.  This process is called normalization and nondimensionalization. The MinMaxScaler is used in this example across the range (-1,1). 


###### Adaptive learning optimizer

* The Adam optimizer is used with a slightly accelerated learning rate of .01 (1E+01 over default).


###### Network topology

A multi-output LSTM model, a LSTM embedded-bidirectional model, and a feedback-regenerative model are explored.  The bidirectional model used in the hourly analysis is based on the LSTM/GRU network in Jaquart, Dann, Weinhardt (2021):  Normalized batches are input to a 256-cell bidirectional LSTM layer, followed by a 50% dropout layer, and an 8-dense neuron with sigmoid activation.

### Splitting the training dataset

The resultant dataframe is split into test batches to monitor performance during the training run.
The training split used in this routine is 70-20-10.

##### Split methodology
The dataframe is split according to the a simple enumeration of the epochal index, as the data is a time series.

### Callback methods
The model will stop early (prior to the 11th epoch) when loss goes significantly unimproved (by monitoring the successive loss delta) for five consecutive runs (the patience factor). For an extended training run, the end-early loss delta value can be reduced and number of epochs increased.

### Results
Please navigate to this [folder](https://github.com/LaviJ/Cryptocurrency-Analysis/tree/main/Machine%20Learning) for more information on machine learning.
