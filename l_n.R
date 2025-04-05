# Calculate the left Riemann sum approximation of the integral of 'func' from
# a to b using n rectangles
l_n <- function(a, b, n, func) {
  delta_x <- (b - a) / n
  print(delta_x)
  points <- seq(a, (b - delta_x), length.out = n)
  print(points)
  delta_x * sum(sapply(points, FUN = func))
}