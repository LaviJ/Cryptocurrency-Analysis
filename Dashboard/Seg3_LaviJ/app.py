# 10.5.1 Use Flask to Create a Web App

# importing our tools
from flask import Flask, render_template, redirect, url_for
from flask_pymongo import PyMongo
import top_10_latest_crypto
# import libraries


# to set up Flask
app = Flask(__name__)

# tell Python how to connect to Mongo using PyMongo
# Use flask_pymongo to set up mongo connection
app.config["MONGO_URI"] = "mongodb://localhost:27017/mars_app"
mongo = PyMongo(app)

@app.route("/")
def index():
   mars = mongo.db.mars.find_one()
   print(mars)
   return render_template("index.html", mars=mars)

@app.route("/scrape")
def scrape():
   print('inside scrape function')
   mars = mongo.db.mars
   mars_data = scraping.scrape_all()
   print(f'mars data is{mars_data}')
   mars.update({}, mars_data, upsert=True)
   return redirect('/', code=302)

if __name__ == "__main__":
   app.run(port=8000)


