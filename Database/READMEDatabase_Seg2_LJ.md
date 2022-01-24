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





