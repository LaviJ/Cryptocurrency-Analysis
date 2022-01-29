import requests
from requests import Session
from requests.exceptions import ConnectionError, Timeout, TooManyRedirects
import json
import pandas as pd
from coinmarket_config import API_Key
import numpy as np
import pymongo
from pymongo import MongoClient
import certifi
from mongo2_config import mongo_uri

api_endpoint = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?CMC_PRO_API_KEY='
api_endpoint += API_Key

def top_10_cryp_analysis():
    data_retrieved = requests.get(api_endpoint).json()
    cryptodata = data_retrieved['data']
    final_crypto_data_df = crypto_data_df.dropna(axis=1)
    final_crypto_data_df= final_crypto_data_df.rename(columns={
    'circulating_supply' : 'Circulating_supply',
    'total_supply' : 'Total_supply',
    'quote.USD.price' : 'Price',
    'quote.USD.volume_24h' : 'Volume_24h',
    'quote.USD.volume_change_24h' : 'Volume_change_24h',
    'quote.USD.percent_change_1h' : 'Percent_change_1h',
    'quote.USD.percent_change_24h' : 'Percent_change_24h',
    'quote.USD.percent_change_7d' : 'Percent_change_7d',
    'quote.USD.percent_change_30d' : 'Percent_change_30d',
    'quote.USD.percent_change_60d' : 'Percent_change_60d',
    'quote.USD.percent_change_90d' : 'Percent_change_90d',
    'quote.USD.market_cap' : 'Market_cap',
    'quote.USD.market_cap_dominance' : 'Market_cap_dominance',
    'quote.USD.fully_diluted_market_cap' : 'Fully_diluted_market_cap',
    'quote.USD.last_updated' : 'Last_updated'})
    Top_market_cap_currencies_df = final_crypto_data_df.sort_values(by = ["Market_cap"], ascending = False)
    Top_total_supply_currencies_df = final_crypto_data_df.sort_values(by = ["Total_supply"], ascending = False)
    

