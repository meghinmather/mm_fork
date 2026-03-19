# load libraries
library(dplyr)
library(tidyr)
library(ggplot2)
library(summarytools)

# load raw data
raw_15min <- read.csv("data/raw/agg_15min_data.csv", stringsAsFactors = F)

# structure of data (produced a data frame)
str(raw_15min)

# preliminary data exploration
head(raw_15min)
tail(raw_15min)
summary(raw_15min)
glimpse(raw_15min)
dfSummary(raw_15min)

