library(tidyverse)
library(ggplot2)
library(RCurl)
library(googlesheets4)
library(stringr)

# link <- "https://docs.google.com/spreadsheets/d/1xMou8td1q1VNUf8kzJTosT4u2Ug2ng_a09zQKU1Sw7Y/edit#gid=1121498928"
# raw <- googlesheets4::read_sheet(link)
raw <- read.csv("../data/raw.csv", check.names = FALSE)

df = raw %>% select(abstract, full_text)

# abstract
df$abstract %>% table()

# full text
df$full_text %>% table()
