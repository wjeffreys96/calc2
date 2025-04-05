# Calculate the midpoint Riemann sum approximation of the integral of 'func'
# from a to b using n rectangles
m_n <- function(a, b, n, func) {
  delta_x <- (b - a) / n
  print(delta_x)
  midpoints <- seq((a + (delta_x / 2)), (b - (delta_x / 2)), length.out = n)
  print(midpoints) 
  delta_x * sum(sapply(midpoints, FUN = func))
}