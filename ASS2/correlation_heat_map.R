getwd()
setwd("C:/Users/USER/Downloads/ASS2")
set.seed(31860397)
life <- read.csv("Life_Expectancy_Data.csv", header=TRUE)
library(dplyr)
str(life)
head(life)


filtered_data <- life %>%
  filter(Year == 2014)

#correlation matrix
selected_columns <- filtered_data[, c("life_expectancy", "adult_mortality", "infant_deaths", "Polio", "Measles", "Diphtheria")]



cor_matrix <- cor(selected_columns)

print(cor_matrix)