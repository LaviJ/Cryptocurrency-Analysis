# Crptocurrency Analysis
Analyzing the Crptocurrency market and creating predictions using the machine learning algorithms.

![Blockchain](Images/Cryptocurrency-Bitcoin-Blockchian-Dice.jpg)

## Overview : 
Cryptocurrency, a form of decentralized digital money based on blockchain technology has gained lot of popularity in the past few years. As crypto is a highly speculative investment with the potential for intense price fluctuations, experts hold mixed opinions about investing in cryptocurrencies. 

As of Nov. 26, 2021, the combined market value of the world's bitcoins totaled over 1.03 trillion and the global market price of a single bitcoin was $54,572. (Ref: Investopedia) and the market keeps growing.

Following are the top 10 Cryptocurrencies (Ref: Forbes) :
![Top_10](Images/Top_10_Cryptocurrencies.png)

Global adoption of cryptocurrency has taken off in the last year, up 881%, with Vietnam, India and Pakistan firmly in the lead, according to new data from Chainalysis.(Ref: CNBC)

As per triple A, between 2012 and 2021, the price of Bitcoin has increased by over 540,000% and has reached an annual growth of 274% in 2020 and the cryptocurrency market is predicted to grow with an annual growth rate of 56.4% from 2019 to 2025.

Cryptocurrency across industries (Ref: Triple A) clearly proves the growing popularity of cryptocurrencies.
1. Upto 40% of customers pay with cryptocurrency.
2. Number of transactions paid with crypto on e-commerce sites grow by 12.5% every year.
3. Merchants who accept crypto payments saw an average ROI of 327%
4. Digital remittances and cross-border transfers reached almost US$95.96 billion in 2020.
5. Crypto remittance is 388 times faster and 127 times cheaper than traditional remittance methods.
6. 58% cryptocurrency owners are aged under 34.
   
Following are the top 5 countries that have the highest number of crypto owners*Ref: Triple A) :
1. India (100 million)
2. USA (27 million)
3. Nigeria (13 million)
4. Vietnam (5.9 million)
5. United Kingdom (3.3 million)

## Purpose of the project :
Considering the above popularity, it clearly proves that the crypto market will keep growing over the coming years. But also in order to predict the future of crytocurrency its important to consider factors that impact the prices of the cryptocurrencies (Ref: ).
1. Supply & Demand : This is one of the main factors influencing the price of the cryptocurrency. Just like an demand and supply cycle, if the demand is high as compared to the supply. the higher the price and vice versa.

2. Cost of extraction(mining) : Crytocurrencies are extracted using an intense amount of computer power and electricity. It’s estimated that 0.21% of all of the world’s electricity goes to powering Bitcoin farms.

3. Rules & regulation : If the rules or requirements introduced by national authorities, become quite restrictive or take the form of repression, the price of the cryptocurrency may fall. 

4. Power of the media : Just like the stock market, good news can certainly increase it, while bad news can cause panic, which leads to a quick escape of investors from the market and rapid falls.
   
5. Financial crises : Depends on the economic situation in the concerned countries, If the traditional financial system starts to collapse, people panicly run in other assets.

6. Celebrity Impact (Ref :https://www.trality.com/blog/how-does-cryptocurrency-gain-value) :
A cryptocurrency’s ability to gain value can be helped (and, at times, hindered) by stardom. Elon Musk, Jack Dorsey, Mike Tyson, Maisie Williams, Mark Cuban, Snoop Dogg, Steven Seagal, Kanye West, Floyd Mayweather Jr., and Richard Branson are just a handful (or two) of celebrity holders of the now famous coin, spanning the worlds of sport, film, music, and business.

As there are so many factors that influence the price of the cryptocurrencies, in this analysis we are applying the machine learning models to predict the price of the cryptocurrencies using the following tools.
![Tools](Images/Tools.png)

 Also we are extracting information from various social media sites that contain any comments by celebrities or whales(highest buyers of cryptocurrencies) and run a sentiment analysis to enhance our prediction. 

The following main questions are addressed through this analyis :
![Ouestions](Images/Order_analysis.png)

## Meet the team :
![Team & Roles](Images/Team_Segment1.png)

## Description of the communication protocols :
1. Sharing info via the slack channel of our group.
2. All the database and info links of the slack channel stored on a shared google doc for easy access.
3. Status of the project updated on the shared google doc.
4. Zoom calls twice per week apart from the virtual UC Berkeley classes.
5. Github files reviewed and merged. 

## Psuedocode for the project :
1. Selecting the dataset
2. Preprocessing the database - 
    a. Removing all null values
    b. Removing all irrelevant columns like (name and index no., etc)
    c. Bucketing
    d. Running one-hot encoder and creating a new dataframe
3. Connecting to the provisional database
4. Training the model
5. Using LSTM Bidirectional Layers and a Dense Activation Layer 
6. Changing the number of epochs on the models
7. Storing the results on the database
8. Creating visualizations using Tableau and a webpage using HTML, CSS or bootstrap.

## Description of the source data:
The data we have gathered is from Kaggle and Data World. The historical cryptocurrency data from Kaggle includes: coin name, symbol, date, high, low, open, close, volume, marketcap. The same metrics were also recorded in the ‘S&P 500 Historical Data’ csv file from Kaggle. The csv files from Data World include common finance metrics for cryptocurrencies, including: coin name, symbol, marketcap, price, volume.
The historical trading data is included for the following coins and more:

Bitcoin
Ethereum
XRP
Tether
Cardano
Monero
Stellar
BinanceCoin
Litecoin

## Technology Usage Plan (Role X by Jordan):
Data Cleaning and Analysis
Pandas will be used to clean the data and perform an exploratory analysis. Further analysis will be completed in Python utilizing dependencies including but not limited to Pandas, NumPy, matplotlib, json. Spark for Python, aka PySpark, will be used in Google Colab. If we have enough time for a sentiment analysis, the Apache Hadoop software library, especially Apache Pig and MapReduce framework, will be helpful for analyzing Twitter data and NLP.

Database Storage
We intend to use MongoDB. And we will integrate Flask to display the data. We will also uses the QuickDBD website to create an ERD.

Machine Learning
Google Colab will be used to run the machine learning model. The Keras library from Tensor Flow will be utilized. And we aim to use a Bidirectional Long Short-Term Memory (BI-LSTM) model.

Dashboard
In addition to using Flask, we can use D3.js for an interactive dashboard. It will be hosted on Github pages. We will also use Tableau to display graphs and tell a story with the data.

## Database (Role: Cirlce by Yutai)
Overview
Find public resources on virtual currencies for non-profit academic research through Kaggle and Data world. We use Pandas to narrow down the data and remove some extraneous information. The preparation of these data will effectively improve the speed and accuracy of data operations, and upload these data to MongoDB.

Data Selection
Dataset used : https://www.kaggle.com/sudalairajkumar/cryptocurrencypricehistory

Remove unimportant information such as virtual currency names and symbols.
Reduce the time horizon to nearly five years, reduce the amount of data and improve forecast accuracy.
MongoDB
Upload the sorted data to MongoDB, so that team members can more easily obtain the latest data.

## Machine Learning Model (Role Triangle by Robert)
Overview
Using data regarding cryptocurrency pricing, S&P 500 historical pricing, and news/twitter public sentiment this machine learning model would attempt to predict pricing, as well as predict future prices.

Data Preprocessing
Data would need to be interpreted as a time series by machine learning model for price prediction.

Use StandardScaler for dataset normalization.

Standard test, train, and split to train model.

Machine Learning Model
Price Prediction
Use Long-Short Term Memory Bidirectional Recurrant Neural Net for Price Prediciton, for both the S&P and top ten CryptoCurrencies.

Use 2 LSTM Bidirectional Layers and a Dense Activation Layer

Train between 50 and 100 Epochs.

Basic model has been tested on existing source code, further optimization needed.

Model is connected to the Mongo Database

Sentiment Analysis for Price Prediction
Use an NLP AI to determine sentiment around a particular digital asset or equity and use as either an additional data class in the price prediction metric through binary classification or as a stand alone deliverable for additional Price Movement Analysis outside of the machine learning spectrum.

## Machine Learning Model (Role Triangle by Richard)
### Preliminary Data Preprocessing

The data is extracted from the source via free authenticated API calls to cryptocompare.com. Data are then fed into a MongoDB database to be retrieved by the machine learning routine.

### Preliminary Feature Engineering

#### Description of dataset

The dataset comprises hourly price data for each of the 10 selected crypto ticker symbols. This model will utilize hourly data as a method of obtaining signalling with a Δt suitable for making a 4-day-out price trend prediction.  The model will analyze the entire history of each coin, as the datasets all go back to the same point in time.

###### Rows with zeros removed

Data on coins other than BTC will contain zeros until the genesis time of the coin.  Those rows are dropped from the dataset so as to not confuse the algorithm into training on empty data.

#### Preliminary Feature Selction

##### Volume data dropped

To produce a simpler model, the trade volume data were stripped from the dataframe. The simpler model, while shallower as a result, is optimized to train solely on the price movements.

##### Retained price data

The following data were retained:
* open in $ (USD)
* low in $ (USD)
* close in $ (USD)
* high in $ (USD)

##### Hourly timestamps since hour of BTC genesis

The entirety of crypto history goes back to January 3rd 2009, 18:15:05h UTC, also known as the Unix Epoch 1231006505, the timestamp of the so-called "Genesis Block", the un-deleteble hard-coded begining of the Bitcoin blockchain. Our dataset begins at the beginning of that hour, the Unix Epoch 1231005600.

###### Single coin analyzed

In each trained model, only the price data of a single cryptocurrency ticker symbol will be analyzed.  This will make the trained model an expert at the particular coin under test.

###### Financially-significant time-periodic waveforms

The following time periods are reasonably tied to financially significant calendar-based event cycles. These 8 normalized waveforms are loaded into columns beside the four price point columns.
* Weekly sine, Weekly cosine wave
* Bi-weekly sine, Bi-weekly cosine waves
* Quartly sine, quarterly cosine waves
* Annual sine and cosine waves

###### Normalization of price data

The mean and one standard deviation are removed from the price data, as this will optimize attention to the centroid of the price fluctuation.  This process is called normalization and nondimensionalization.

### Splitting the training dataset

#### The resultant dataframe is split into test batches to monitor performance during the training run.

##### The methodology used to split the dataframe is

##### The model will stop early (prior to the 100th epoch) when loss goes significantly unimproved (by monitoring the successive loss delta) for three consecutive runs (the patience factor). For an extended training run, the end-early loss delta value can be reduced. 


## Results : 
1. Half Yearly price fluctuations : We can see the half yearly price fluctuations in the graph below :
![Price Fluctuations](Images/Half_yearly_price_fluctuations.png)

2. Model loss of both training and testing is shown to have a major differene as per the below graph: 

![Model loss](Images/Model_loss_over_50Epochs.png)

3. As we run the model for price prediction, we saw major difference during a certain time frame in the predicted vs the actual price as per the image below: 
![Price prediction](Images/Price_prediction.png)

# Summary :
The above sample analysis, has helped us understand that the above model can work on the larger dataset for this project. But apart from this we will have to check if we can increase the dataset for a better accuracy.
