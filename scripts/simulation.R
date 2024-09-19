#### Preamble ####
# Purpose: Simulates data for marriage licenses
# Author: Parth Samant
# Date: 19 September 2024
# Contact: parth.samant@mail.utoronto.ca
# License: MIT
# Pre-requisites: tidyverse
# Any other information needed? None


#### Workspace setup ####
library(tidyverse)

#### Simulate data ####
df <- 
  tibble(
    date = seq(as.Date('2023/01/01'), as.Date('2023/12/31'), by="day"),
    num_marriages = rpois(365, lambda = 10)
  )


write.csv(df, "data/simulated_data.csv", row.names = FALSE)
