#### Preamble ####
# Purpose: Cleans raw data
# Author: Parth Samant
# Date: 19 September 2024
# Contact: parth.samant@mail.utoronto.ca
# License: MIT
# Pre-requisites: Raw data
# Any other information needed? None

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("data/raw_data/Marriage License Statistics Data.csv")

cleaned_data <-
  raw_data |>
  janitor::clean_names() |> 
  separate(col = time_period, 
           into = c("year", "month"),
           sep = "-") |>
  mutate(date = lubridate::ymd(paste(year, month, "01", sep = "-")))

#### Save data ####
write_csv(cleaned_data, "data/raw_data/Marriage License Statistics Data.csv")
