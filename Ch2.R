# Title     : Chapter 2
# Objective : Data Structures
# Created by: sunpeng
# Created on: 2020/12/23

# Vector
# * atomic vector: c() - flat
# * list: list() - recursive
# - typeof()
# - length()
# - attributes(): attr(), structure(), names(), class(), dim()

# Factor
# - class(): "factor"
# - levels()

# DataFrame
df <- data.frame(x = rep(1:3, each = 2), y = 6:1, z = letters[1:6])
t1 <- df[sample(nrow(df)), ]
t2 <- df[sample(nrow(df), 3), ]
t3 <- df[sample(nrow(df), 10, rep = T), ]