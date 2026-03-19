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


mean(raw_15min$speed)
mean(raw_15min$volume)
hist(raw_15min$volume)

# learn about filters
occ_20plus <- raw_15min |>
  filter(occupancy == 20)  

occ10_sp80 <- raw_15min |> 
    filter(occupancy < 10 & speed > 80)
table(occ10_sp80$detector_id)

# working with NAs
blank_example <- raw_15min |> 
  filter(is.na(speed))
complete_df <- raw_15min |> 
  filter(!is.na(speed))

subset_o10s80 <- occ10_sp80 |> 
  filter(detector_id %in% c(101105, 101176))

saveRDS(complete_df, "data/clean_data.rds")
