 # load libraries
library(dplyr)
library(ggplot2)
library(tidyr)
library(plotly)

# load clean dataset
clean_df <- readRDS("data/clean_data.rds")

speed_occ_fig <- clean_df |> 
  ggplot(aes(x = speed, y = occupancy, color = as.factor(detector_id))) +
  geom_point()
speed_occ_fig

speed_vol_fig <- clean_df |> 
  ggplot(aes(x = speed, y = volume, color = as.factor(detector_id))) +
  geom_point()
speed_vol_fig

speed_vol_fig2 <- clean_df |> 
  filter(detector_id < 101100) |> 
  filter(speed > 40) |> 
  ggplot(aes(x = speed, y = volume, color = as.factor(detector_id))) +
  geom_point()
speed_vol_fig2

det_speed_vol_fig <- ggplotly(speed_vol_fig)


speed_occ_fig2 <- clean_df |> 
  filter(detector_id < 101100) |> 
  filter(speed > 40) |> 
  ggplot(aes(x = speed, y = volume, color = as.factor(detector_id))) +
  geom_bar(aes(x = speed, y = volume, color = as.factor(detector_id)))
speed_occ_fig2




