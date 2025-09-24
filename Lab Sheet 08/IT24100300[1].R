setwd("C:\\Users\\ASUS\\Desktop\\Lab 08")


data <- read.table("Data - Lab 8.txt", header = TRUE)
laptop_bag_weights <- data[[1]]  # Extract the first column (adjust if necessary)

population_mean <- mean(laptop_bag_weights)
population_sd <- sd(laptop_bag_weights)

cat("Population Mean:", population_mean, "\n")
cat("Population Standard Deviation:", population_sd, "\n")

num_samples <- 25
sample_size <- 6

sample_means <- numeric(num_samples)
sample_sds <- numeric(num_samples)

set.seed(42)
for (i in 1:num_samples) {
  sample_data <- sample(laptop_bag_weights, size = sample_size, replace = TRUE)
  sample_means[i] <- mean(sample_data)
  sample_sds[i] <- sd(sample_data)
}

cat("Sample Means:\n", sample_means, "\n")
cat("Sample Standard Deviations:\n", sample_sds, "\n")

mean_sample_means <- mean(sample_means)
sd_sample_means <- sd(sample_means)

cat("Mean of Sample Means:", mean_sample_means, "\n")
cat("Standard Deviation of Sample Means:", sd_sample_means, "\n")
cat("True Population Mean:", population_mean, "\n")
cat("True Population Standard Deviation:", population_sd, "\n")

