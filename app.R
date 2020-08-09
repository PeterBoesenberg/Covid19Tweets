library(data.table)
library(modules)
library(maps)

load <- modules::use("load.R")
clean <- modules::use("clean.R")
chart <- modules::use("chart.R")

data <- load$load()
data <- clean$clean(data, world.cities)


chart$get_tweet_location_chart(data)

