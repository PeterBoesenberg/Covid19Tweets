library(data.table)
library(modules)
library(maps)

load <- modules::use("load.R")
clean <- modules::use("clean.R")
chart <- modules::use("chart.R")
# predict <- modules::use("predict.R")

data <- load$load()
data <- clean$clean(data, world.cities)


chart$get_tweet_location_chart(data)
# prediction <- predict$get_result(data, data)

