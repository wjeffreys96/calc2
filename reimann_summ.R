# calculate the Reimann sum of a function given a partition P,
# and a set of points C

func <- function(x) {
  x^2 + 4
}

P <- c(0.2, 1.3, 2.3, 2.7, 3.8)

C <- c(0.3, 1.4, 2.5, 2.9)

print(c(func, P, C))

# reimann_sum <- function(func, P, C) { }
