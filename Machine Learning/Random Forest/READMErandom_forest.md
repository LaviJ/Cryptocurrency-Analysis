#  Random Forest Model

## Summary of Model
As a Comparison to the Bidirectional LSTM Model, a Random Forest Classifier Model was built to further analyze data.  

## Data Preprocessing
* Set Date as the index for the DataFrame

* Split Data Into Training and Testing

* Scaled entire Dataset using the StandardScaler()

## ML Model
* Random Forest Regressor Model with 700 initial n-estimator parameters.  Altering the n-estimator variable could be the best way for optimization.

## Practical Application Potential
The buy price and sell price generated from the full 5 year dataset produce extremely skewed prices.  Could have potential for more accurate prediction with a smaller dataset or combined with an additional bidirectional machine learning model.

