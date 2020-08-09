import(data.table)
import(modules)

export("load")

load <- function() {
  fread("./data/covid19_tweets.csv")
}