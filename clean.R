import(modules)
import(data.table)
import(maps)

export("clean")

# select columns we will use for prediction
select_columns <- function(data) {
  data[, .(user_name, user_location)]
}

set_lat_long <- function(data, cities) {
  cities <- as.data.table(cities)[, .(name, lat, long)]
  setkey(cities, name)
  setkey(data, user_location)
  data <- cities[data, nomatch = 0]
  data
}

# do everything do make our data nice and clean
clean <- function(data, cities) {
  data <- select_columns(data)
  data <- set_lat_long(data, cities)
  print(data)
  data
}