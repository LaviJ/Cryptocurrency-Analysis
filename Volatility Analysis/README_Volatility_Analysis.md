# Volatility Analysis

## Technology Used
- MongoDB
- Google Colab
- PyMongo
- Python
- Pandas
- NumPy
- Matplotlib

## Cryptocurrencies Included in Analysis
10 Cryptocurrencies:
1. Binance Coin
2. Bitcoin
3. Cardano
4. Dogecoin
5. Ethereum
6. Litecoin
7. Monero
8. Stellar
9. Tether
10. XRP

+S&P 500 (for context/baseline)

## What is Volatility
Volatility is the annualized standard deviation. To annualize the standard deviation, you multiply it by the square root of the number of trading days in a year (253).


## Volatility Analysis

### Connecting to the Data (MongoDB)
The historical data for the 10 cryptocurrencies and the S&P500 was stored in the project's MongoDB database. The data was uploaded to the notebook using a MongoDB connection string. The data was then converted to a dataframe using Pandas.


### Filtering the Data for the Selected Years
The dataframe was filtered for the selected year - 2018, 2019, 2020 - respectively. The close price for the selected year was then visualized as a line graph.


![CP2018_Dogecoin](https://user-images.githubusercontent.com/88804543/150696578-4ee8be20-1eee-4275-8de2-38d9822a18c9.png)



![CP2019_Dogecoin](https://user-images.githubusercontent.com/88804543/150696588-5730fd7c-c99e-4581-be9a-c49d73132a8f.png)



![CP2020_Dogecoin](https://user-images.githubusercontent.com/88804543/150696600-ca8c05fc-dbf8-4a06-8348-4be0dddc2768.png)



### Calculating the Log Return
The NumPy library was used to calculate the daily log return. A new column was added to the selected year's dataframe showing the daily log return of the 'Close' price. 


### Calculating the Annual Percent Volatility (2018-2020)
The volatility is defined as the annualized standard deviation. Thus the standard deviation of the daily log returns was multiplied by the square root of 253 to yield the volatility. The square root of 253 is used because there are approximately 253 trading days per year. The volatiltiy is then multiplied by 100% to get the **annual percent volatility**. The annual percent volatility was then visualized with a histogram using matplotlib.
Note: The S&P 500 was included in this analysis to provide context for the volatility of the 10 cryptocurrencies.


![2020_Tether](https://user-images.githubusercontent.com/88804543/150696553-7383e5ed-6498-42e1-999b-076b0a927042.png)


![2019_XRP](https://user-images.githubusercontent.com/88804543/150696522-4520cc8b-d566-4e93-a910-08af4fb79a3f.png)



## Annual Percent Volatility from 2018-2020
All 10 cryptocurrencies and the S&P 500 annual percent volatility were visualized with a line graph. The line graph shows the annual percent volatility over a 3 year period, from 2018 to 2020, where each cryptocurrency and the S&P 500 is displayed with its own respective line.


![APV_AllCoins](https://user-images.githubusercontent.com/88804543/150696506-473d138b-e925-4a55-a2e5-dac2a6a9b67b.png)


## Results

#### Year 2018 Volatility
- Most stable cryptocurrency: Tether
- Most volatile cryptocurrency: Dogecoin

#### Year 2019 Volatility
- Most stable cryptocurrency: Tether
- Most volatile cryptocurrency: Litecoin


#### Year 2020 Volatility
- Most stable cryptocurrency: Tether
- Most volatile cryptocurrency: XRP

#### 3-Year Period (2018-2020) Volatility
- Most stable cryptocurrency: Tether
- Most volatile cryptocurrency: XRP


## Reference
Source: https://www.learnpythonwithrune.org/calculate-the-volatility-of-historic-stock-prices-with-pandas-and-python/
