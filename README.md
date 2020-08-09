# Covid19Tweets
Kaggle-Task from https://www.kaggle.com/gpreda/covid19-tweets

# Task
Show the geographical distribution of Covid19 Tweets

# solution
Using column "user_location" I match the location with those of world.cities from the "map"-package
Thes lat/long pairs I show on a world-map.

# Todo
- group by city
- mark cities with lots of tweets different than those with only a few
- improve matching between user_location and city (only around 10000 of 81000 tweets automatically matched)
