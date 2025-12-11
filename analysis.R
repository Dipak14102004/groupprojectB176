# Statistical test used to test the hypotheses and output

data$Number.of.Votes <- as.numeric(gsub(",", "", data$Number.of.Votes))
data$Number.of.Votes <- as.numeric(gsub(",", "", data$Number.of.Votes))

data$User.Rating <- as.numeric(data$User.Rating)


data_clean <- data[!is.na(data$User.Rating) & !is.na(data$Number.of.Votes), ]

correlation_test <- cor.test(data_clean$User.Rating,
                             data_clean$Number.of.Votes,
                             method = "pearson")

correlation_test