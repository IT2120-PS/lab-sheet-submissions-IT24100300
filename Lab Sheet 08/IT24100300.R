setwd("C:\\Users\\ASUS\\Desktop\\IT24100300")

# Q1

Weight <- c(2.46, 2.45, 2.47, 2.71, 2.46, 2.05, 2.6, 2.42, 2.43, 2.53,
            2.57, 2.85, 2.7, 2.53, 2.28, 2.2, 2.57, 2.89, 2.51, 2.47,
            2.66, 2.06, 2.41, 2.65, 2.76, 2.43, 2.61, 2.57, 2.73, 2.17,
            2.67, 2.05, 1.71, 2.32, 2.23, 2.76, 2.7, 2.13, 2.75, 2.2)


pop_mean <- mean(Weight)
pop_sd <- sd(Weight)

pop_mean
pop_sd

#Q2
set.seed(123)  

samples <- matrix(nrow = 6, ncol = 25)

for (i in 1:25) {
  samples[, i] <- sample(Weight, 6, replace = TRUE)
}


sample_means <- apply(samples, 2, mean)
sample_sds <- apply(samples, 2, sd)

sample_stats <- data.frame(
  Sample = 1:25,
  Mean = round(sample_means, 4),
  SD = round(sample_sds, 4)
)

print(sample_stats)

#Q3

sample_mean_of_means <- mean(sample_means)
sample_sd_of_means <- sd(sample_means)

n <- 6

theoretical_sd_of_means <- pop_sd / sqrt(n)

sample_mean_of_means
sample_sd_of_means
theoretical_sd_of_means

