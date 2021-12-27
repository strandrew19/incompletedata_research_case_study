library(MVN) 

set.seed(420)

mean <- seq(0,2)
vcm <- matrix(data = c(1,1,1.7,1,2, 1.5, 1.7, 1.5, 4), nrow = 3, byrow = T)

data <- data.frame(MASS::mvrnorm(n = 1000, mu = mean, Sigma = vcm))
colnames(data) <- c("X", "Y", "W")
colMeans(data)
