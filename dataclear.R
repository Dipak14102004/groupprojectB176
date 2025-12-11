
library(ggplot2)
library(scales)

data <- read.csv("imdb_anime.csv")   # Replace with your real CSV filename

data$Number.of.Votes <- as.numeric(gsub(",", "", data$Number.of.Votes))

data$User.Rating <- as.numeric(data$User.Rating)

data_clean <- data[!is.na(data$User.Rating) & !is.na(data$Number.of.Votes), ]



