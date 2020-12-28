# Title     : Chapter 5
# Objective : samples
# Created by: sunpeng
# Created on: 2020/12/25

f <- function(x) {
  force(x)
  10
}

system.time(f(Sys.sleep(10)))
