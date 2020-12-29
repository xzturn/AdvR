# Title     : Chapter 5
# Objective : samples
# Created by: sunpeng
# Created on: 2020/12/25
library('pryr')

foo <- function(x) {
  force(x)
  10
}

system.time(foo(Sys.sleep(1)))

x <- 'AI'
z <- c("AI", "BABA", "FB", "TSM")
x %in% z

"second<-" <- function(x, value) {
  x[2] <- value
  x
}

x <- 1:10
address(x)
x
second(x) <- 5L
address(x)
x