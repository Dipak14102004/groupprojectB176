# IMDB Anime Data Analysis Project

## Project Overview
This project analyzes a dataset of Anime titles from IMDB to explore the relationship between audience engagement (Number of Votes) and perceived quality (User Rating). 

The primary goal is to determine if popularity correlates with higher ratings using statistical testing (Pearson Correlation) and data visualization.

## File Structure

### Data
* **`imdb_anime.csv`**: The raw dataset containing columns for Title, Genre, User Rating, Number of Votes, Runtime, and Year.

### Code
* **`run_project.R`**: The master execution script. Run this to execute the entire project flow.
* **`fullcode.R`**: All the code of different files compiled into one script for ease of reviewing.
* **`dataclear.R`**: Handles data ingestion and preprocessing. It removes commas from vote counts, converts columns to numeric types, and filters out missing values (NAs).
* **`analysis.R`**: Performs statistical hypothesis testing (Pearson correlation coefficient) to quantify the relationship between votes and ratings.
* **`visualisation.R`**: Generates plots using `ggplot2`:
    * A log-scaled scatter plot comparing User Rating vs. Number of Votes.
    * A histogram showing the distribution of votes across the dataset.

### Output Images
* **`histogram.png`**: Histogram of vote distribution.
  
 ![imdbproject](https://github.com/user-attachments/assets/76d37ee0-191d-4f14-a27d-5cde59d58b85)

* **`scatterplot.png`**: Scatter plot visualization.
  
 ![imdbproject2](https://github.com/user-attachments/assets/1d047716-c714-4cde-ae95-b5a97d04be85)


## Prerequisites & Installation

This project requires **R** and the following R packages:

* `ggplot2` (for visualization)
* `scales` (for axis formatting)

You can install these manually via the console:
```R
install.packages(c("ggplot2", "scales"))
