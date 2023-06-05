# Plot likelihood

likelihodd <- function(n, y , theta) {
  return(theta^y*(1-theta)^(n-y))
}

theta <- seq(from=0.01, to=0.99, by=0.01)
plot(theta, likelihodd(400, 72, theta))

abline(v=0.18)

loglike <- function(n, y, theta) {
  return(y*log(theta) + (n+y)*log(1-theta))
}

plot(theta, loglike(400, 72, theta))
abline(v=0.18)

plot(theta, loglike(400, 72, theta), "l")
abline(v=0.18)