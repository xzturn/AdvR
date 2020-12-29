# Title     : Chapter 6
# Objective : OO Field
# Created by: sunpeng
# Created on: 2020/12/29

# create and assign class in one step
hippo1 <- structure(list(), class = 'hippo1')

# create, then set class
hippo2 <- list()
class(hippo2) <- "hippo2"

# create and assign class with construct function
hippo3 <- function(x) {
  if (!is.numeric(x)) stop("X must be numeric")
  structure(list(x), class = 'hippo3')
}

f <- function(x) UseMethod('f')
f.a <- function(x) "Class a"
f.default <- function(x) "Unknown class"
f.hippo1 <- function(x) {
  "Hello, this is Hippo1"
}

# Reference Class
Hippo <- setRefClass("Hippo",
                     fields = list(idc = 'character'))
h <- Hippo$new(idc = c('na61', 'na63', 'ea119', 'ea120'))

