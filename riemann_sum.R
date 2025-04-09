# calculate the Riemann sum of a function given a partition P,
# and a set of points C

# test values
func <- function(x) {
  x^2 + 4
}

P <- c(0.2, 1.3, 2.3, 2.7, 3.8)

# length (C) Must be length(P) - 1
C <- c(0.3, 1.4, 2.5, 2.9)

riemann_sum <- function(func, P, C) {
  if (length(C) != (length(P) - 1)) {
    stop("Length of P must be exactly one greater than length of C")
  }
  delta_x <- diff(P)
  func_values <- sapply(C, func)
  rectangles <- func_values * delta_x
  sum(rectangles)
}

# test run
print(riemann_sum(func, P, C))
