#### Preamble ####
# Purpose: Tests... [...UPDATE THIS...]
# Author: Parth Samant
# Date: 11 February 2023 [...UPDATE THIS...]
# Contact: parth.samant@mail.utoronto.ca [...UPDATE THIS...]
# License: MIT
# Pre-requisites: [...UPDATE THIS...]
# Any other information needed? [...UPDATE THIS...]


#### Workspace setup ####
library(tidyverse)
#### Test data ####

data <- read_csv("data/raw_data/Marriage License Statistics Data.csv")

# Tests for Negative numbers (LOOK ON CHAPTER 2)

data$MARRIAGE_LICENSES |> min() >= 0

# Tests for NAs

all(is.na(data$MARRIAGE_LICENSES))