cat("Checking and loading required libraries...\n")

if(!require(ggplot2)) {
  install.packages("ggplot2")
  library(ggplot2)
}

if(!require(scales)) {
  install.packages("scales")
  library(scales)
}

# 2. DATA CLEANING
cat("Running Data Cleaning module...\n")
source("dataclear.R")

# Verification step
if(exists("data_clean")) {
  cat("Data cleaned successfully. Rows:", nrow(data_clean), "\n")
} else {
  stop("Error: 'data_clean' object was not created. Check dataclear.R")
}

# 3. STATISTICAL ANALYSIS
cat("Running Statistical Analysis...\n")
source("analysis.R")

# 4. VISUALIZATION
cat("Generating Visualizations...\n")
source("visualisation.R")

cat("\n=================================================================\n")
cat("Project execution complete. Check the Plots pane for visualizations.")
cat("\n=================================================================\n")
