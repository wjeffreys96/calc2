# Calculate the right Riemann sum approximation of the integral of 'func' from
# a to b using n rectangles
r_n <- function(a, b, n, func) {
  delta_x <- (b - a) / n
  print(delta_x)
  endpoints <- seq((a + delta_x), b, length.out = n)
  print(endpoints)
  delta_x * sum(sapply(endpoints, FUN = func))
}