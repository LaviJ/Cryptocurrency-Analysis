# Database
## Overview
Find public resources on virtual currencies for non-profit academic research through Kaggle and Data world. We use Pandas to narrow down the data and remove some extraneous information. The preparation of these data will effectively improve the speed and accuracy of data operations, and upload these data to MongoDB.
### Data Selection
* Remove unimportant information such as virtual currency names and symbols.
* Reduce the time horizon to nearly five years, reduce the amount of data and improve forecast accuracy.
## MongoDB
* Upload the sorted data to MongoDB, so that team members can more easily obtain the latest data.


Lavina Jagwani - week 11th Jan to 23rd Jan

Data Source : https://coinmarketcap.com/api/documentation/v1/#operation/getV1CryptocurrencyListingsLatest

market_cap: CoinMarketCap's market cap rank as outlined in our methodology.
market_cap_strict: A strict market cap sort (latest trade price x circulating supply).
name: The cryptocurrency name.
symbol: The cryptocurrency symbol.
date_added: Date cryptocurrency was added to the system.
price: latest average trade price across markets.
circulating_supply: approximate number of coins currently in circulation.
total_supply: approximate total amount of coins in existence right now (minus any coins that have been verifiably burned).
max_supply: our best approximation of the maximum amount of coins that will ever exist in the lifetime of the currency.
num_market_pairs: number of market pairs across all exchanges trading each currency.
market_cap_by_total_supply_strict: market cap by total supply.
volume_24h: rolling 24 hour adjusted trading volume.
volume_7d: rolling 24 hour adjusted trading volume.
volume_30d: rolling 24 hour adjusted trading volume.
percent_change_1h: 1 hour trading price percentage change for each currency.
percent_change_24h: 24 hour trading price percentage change for each currency.
percent_change_7d: 7 day trading price percentage change for each currency.

File name : Fetch_API_latest_data2.ipynb

Psuedocode :
1. Use URL and API key to fetch data in json format
2. Converted the data from json format to dataframe using json_normalize.
3. Filtered all Nan values and removed columns with null 90% values 
4. Analysis : 
            1. Top 10 cryptocurrencies based on market cap
            2. Top_total_supply_currencies_df
            3. Top_circulating_supply_currencies_df
            4. Top_Percent_90d_df
            5. Top_Percent_60d_df
            6. Top_Percent_30d_df
            7. Top_Percent_7d_df
            8. Top_Percent_24h_df
            9. Top_Percent_1h_df
5. Make this data dynamically availble on the push of a scrape button --- WIP


1. Data Source : kaggle data historical kaggle data

Psuedocode :
1. Filtered all Nan values and removed columns with null 90% values 
2. Analysis : 
            1. Calculate the daily, monthly and yearly fluctuation in closing and opening price
   
3. Make this data dynamically available on the push of a scrape button at a later staget  --- WIP


Data Source : All top 10 bitcoin analysis combined in one file

2. Latest Crypto Data ectracted from cryptocompare using API keys
Psuedocode :
1. Analysis : 
            1. Calculate the daily, monthly and yearly fluctuation in closing and opening price
   
2. Make this data dynamically available on the push of a scrape button at a later stage


3. Crypto Mining data retrieved from Coinwarz and cryptomarket to retrieve the mining difficulty and profitability ratio.
   Merged the mining data in jupyter notebook using pandas in one file for the top 10 currencies by doing a left join in file (Merge_MiningData.ipynb). And then uploading the file onto Mongo DB Atlas. As MongoDb doesn't have the option of doing the join there, the join is done using pandas.
![Merged_table](Images\Merged_tables_join.png)

4. Schema of Merged collection on MongoDB Atlas
![Schema snapshot](Images\Schema.png)

5. More data extracted from the following :
   www.coingeico.com - Worldwide Crypto Exchanges data for exchanges data
   www.cryptonews.com - sentiment score of news from 2020 to 2021
   www.cryptocompare.com : 
Hourly data extracted from for Time based Machine Learning Models.
Hashespersecond data for the coins extracted from www.cryptocompare.com to analyze the supply of cryptocurrencies.
News data for sentiment analysis extracted from www.cryptocompare.com
Social media daily stats

## Machine Learning on Daily Data from Kaggle and live data from www.cryptocompare.com
Model : LSTM- Long short-term memory

Bitcoin price prediction


Long short-term memory networks which is an extension of recurrent neural networks extends the memory and are a powerful type of recurrent neural network capable of learning long sequence of observations.

LSTMs enable RNNs to remember inputs over a long period of time. This is because LSTMs contain information in a memory, much like the memory of a computer. The LSTM can read, write and delete information from its memory.

In an LSTM you have three gates: input, forget and output gate. These gates determine whether or not to let new input in (input gate), delete the information because it isn’t important (forget gate), or let it impact the output at the current timestep (output gate). 

Hence we used LSTM for the prediction of cryptocurrencies in order to be able to predict the price datewise.

Data Source : We used Kaggle data for 5 years from 2016 to 2021 for the predition.

We used multiple layers and 100 epochs with a parameter of epoch stop after a patience of 20, which is running for 20 more epochs after the lowest loss.

### Added the following layers :

adding layers to LSTM :
model = Sequential()

model.add(LSTM(units=50, return_sequences=True, input_shape = (x_train.shape[1], 1)))
model.add(Dropout(0.2))

model.add(LSTM(units=50, return_sequences=True))
model.add(Dropout(0.2))

model.add(LSTM(units=50, return_sequences=True))
model.add(Dropout(0.2))

model.add(LSTM(units=50))
model.add(Dropout(0.2))

model.add(Dense(units=1))

Then, ran the testing data. Below are the predictions of the test :
![Predictions]('..\Analysis\Bitcoin_testing_model_predictions)

Bitcoin
![BTC](UC_Berkeley\Analysis_Projects_Class_Folder\Module20_Final_Project\Cryptocurrency-Analysis\Database\Seg2_LJ\Analysis\Daily_LSTM_Bitcoin_BTC.png)

More coins done the same manner

Then predicted the latest price and compared with the actual market price. Below are the results.

![Results_Daywise_LSTM](Analysis_Projects_Class_Folder\Module20_Final_Project\Cryptocurrency-Analysis\Database\Seg2_LJ\Analysis\Daily_LSTM_Pred_vs_Actual.png)



## Conclusion :

From all the above analysis, we can conclude that investment in Cryptocurrencies can be divided into the following :

Short Term Investment
Long-Term Investment 
High Risk Investment 
Low Risk Investment

And from our analysis, we can see that some coins are more volatile as compared to others thereby imposing high risk to the investment.

Along with the above the following factors are important to be taken into consideration
and they are :

#### Current Market Trend : 
As per this week’s latest data Bitcoin and Ethereum are the top two coins with the highest market cap. Both coins have been in the market for roughly the same period(age).

In the last 7 days period there has been a 5% increase in the price of both coins but the percentage dropped by 35% in the 90 day period.

#### Supply & Demand :
Almost 33% of the coins mined are using the PoW (Proof of work) method which is one of the most energy consuming method as it requires a certain amount of a specific computational effort. Hence miners are shifting towards other methods of mining.

If the cost to mine is more than the current market price, there is less incentive for a miner to sell their cryptocurrencies and this can have a significant impact on the global crypto costs.

BTC and ETH have the highest profit ratio but at the same time the difficulty level is the highest. But as the sentiments in the market for those coins are positive, its profitable for the miners to mine them.

#### Volatility: 
Based on close price in 2018-2020, XRP was the most volatile, Tether was the most stable
Time Series Forecasting and Seasonality Analysis : 
Days of week with highest trading : Tuesday to Thursday
Months with highest trading : March to June
Correlation:  all cryptocurrencies have a positive correlation except Tether (USDT)

#### Sentiment Analysis(Based on News): 
In the last year we have seen that positivity in the sentiments especially for the coins Tether and Cardano. Both the coins started with low sentiments in 2016 and now show the highest sentiments in 2021.

Also the overall market has been showing signs positivity post the pandemic covid.

#### Best Period for trading (days/ months )
Time Series Forecasting and Seasonality Analysis : 
Days of week with highest trading : Tuesday to Thursday
Months with highest trading : March to June

All the above factors can play a big role in making the decision while investing in a cryptocurrency market.










