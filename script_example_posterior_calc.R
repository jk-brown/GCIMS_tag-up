# Example: Updating a prior distribution with normalized weights and scaling

# Generate a prior distribution (normal distribution with mean 2 and standard deviation 1)
prior_mean <- 2
prior_sd <- 1
prior_samples <- rnorm(1000, mean = prior_mean, sd = prior_sd)

# Simulate normalized weights (hypothetical values between 0 and 1)
weights <- runif(1000)
weights <- weights / sum(weights)  # Normalize weights to ensure they sum to 1

# Multiply prior samples by normalized weights to get weighted values
weighted_values <- prior_samples * weights

# Scale the weighted values to better compare shapes
scale_factor <- sd(prior_samples) / sd(weighted_values)
scaled_weighted_values <- weighted_values * scale_factor

# Plot the prior and posterior distributions using kernel density estimates
plot(density(prior_samples), col = "blue", lwd = 2, main = "Prior and Posterior Distributions", xlab = "Temperature Increase", ylim = c(0, 0.5))
lines(density(scaled_weighted_values), col = "red", lwd = 2)

legend("topright", legend = c("Prior", "Posterior"), fill = c("blue", "red"))

# Display the plot

