library(ggplot2)
library(scales)

#build a scatter plot
ggplot(data_clean, aes(x = Number.of.Votes, y = User.Rating)) +
  geom_point(color = "blue", alpha = 0.4, size = 1.5) +
  scale_x_log10(labels = comma_format()) +
  scale_y_continuous(breaks = seq(1, 10, 1)) +
  labs(
    title = "User Rating vs Number of Votes (Log-Scaled)",
    x = "Number of Votes (log scale)",
    y = "User Rating"
  ) +
  theme_minimal(base_size = 14) +
  theme(
    panel.grid.major = element_line(color = "grey85"),
    panel.grid.minor = element_blank()
  )


# Build histogram object to compute counts
p <- ggplot(data_clean, aes(x = Number.of.Votes)) +
  geom_histogram(bins = 40)

gb <- ggplot_build(p)
max_count <- max(gb$data[[1]]$count, na.rm = TRUE)

upper_lim <- ceiling((max_count + 1) / 2000) * 2000


ggplot(data_clean, aes(x = Number.of.Votes)) +
  geom_histogram(bins = 40, fill = "lightblue", color = "black") +
  labs(
    title = "Histogram of Number of Votes",
    x = "Number of Votes",
    y = "Frequency"
  ) +
  scale_y_continuous(limits = c(0, upper_lim),
                     breaks = seq(0, upper_lim, by = 2000)) +
  theme_minimal()
# Load necessary package