install.packages(c("tidyverse", "skimr", "janitor", "corrplot","dplyr"))

library(tidyverse)
library(skimr)
library(janitor)
library(corrplot)
library(dplyr)

phone_df <- uncleaned_phone_details_data
head(phone_df)
summary(phone_df)
skim(phone_df)

#calculate percentage of missing columns
sapply(phone_df, function(x) sum(is.na(x)) / length(x) * 100)

#remove duplicate rows
phone_df <- phone_df %>% distinct()

#remove unnecessary characters and spaces
phone_df$price <- gsub("[^0-9.]", "", phone_df$price)
phone_df <- data.frame(lapply(phone_df, function(x) {
  if(is.character(x)) gsub("\u2009|\u00A0", "", x) else x
}))
phone_df <- data.frame(lapply(phone_df, function(x) {
  if(is.character(x)) trimws(x) else x
}))

#clean column names
phone_df <- phone_df %>% clean_names()
colnames(phone_df)

# Remove all rows with at least one NA
phone_df <- phone_df %>% na.omit()

#check again the percentage of missing values
sapply(phone_df, function(x) sum(is.na(x)) / length(x) * 100)

head(phone_df)
summary(phone_df)

write.csv(phone_df, "cleaned_phone_data.csv", row.names = FALSE)

