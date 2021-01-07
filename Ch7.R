# Title     : Chapter 7
# Objective : Functional Programming
# Created by: sunpeng
# Created on: 2021/1/6

library('pryr')

summary <- function(x) {
  lapply(c(mean, median, sd, mad, IQR), function(f) f(x, na.rm = TRUE))
}

summary(sample(1:100, 20))

# function factories
power <- function(exponent) {
  print(environment())
  function(x) x ^ exponent
}
zero <- power(0)
environment(zero)

# mutable state
mycounter <- function() {
  i <- 0
  function() {
    i <<- i + 1
    return(i)
  }
}

cnt <- mycounter()
cnt()
cnt()
cnt()

cnt2 <- mycounter()
cnt2()

# list of functions
funs <- list(sum = sum,
             mean = mean,
             median = median
)
lapply(funs, function(f) f(x, na.rm = TRUE))

# Functionals
randz <- function(f) f(runif(1e3))
randz(mean)
