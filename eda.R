library(data.table)
library(modules)

load <- modules::use("load.R")

data <- load$load()

dim(data)
summary(data)