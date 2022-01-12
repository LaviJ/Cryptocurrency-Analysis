# Technology Usage Plan

## Data Cleaning and Analysis
Pandas will be used to clean the data and perform an exploratory analysis. Further analysis will be completed in Python utilizing dependencies including but not limited to Pandas, NumPy, matplotlib, json. Spark for Python (PySpark) will be used in Google Colab. If we have enough time for a sentiment analysis, the Apache Hadoop software library, especially Apache Pig and MapReduce framework, will be helpful for analyzing Twitter data and NLP.


## Database Storage
We intend to use MongoDB. We can connect to the database through Python (PyMongo). And we will integrate Flask to display the data. We will remove unimportant features from the data before uploading to MongoDB.


## Machine Learning
Google Colab will be used to run the machine learning model. The Keras library from Tensor Flow will be incorporated. A Bidirectional Long Short-Term Memory (BI-LSTM) model will be used for price prediction for both the S&P 500 and ten popular cryptocurrencies. A StandardScaler will be used for data normalization. The standard test, train, and split function will be used to train the model.
If time allows, an NLP AI will be used to for sentiment analysis.


## Dashboard
In addition to using Flask, we can use D3.js for an interactive dashboard. It will be hosted on Github pages. We will also use Tableau to display graphs and tell a story with the data.