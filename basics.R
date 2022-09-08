seq(from = 1, to = 100, by=5)

v = c(1,2,3)

str(v)

norm_vec = rnorm(n=1000, mean=5, sd=10)
mean(norm_vec)
sd(norm_vec)

x = c(1, NA, 2)
mean(na.omit(x))

x[-1]
x[5] = 15

rep(5, 10)

seq(from=60, to=-15, by=-10)

fun = function(a, c) {
  return (a + c) ^ 2
}

fun(1:3, 1:3)

x = 2:4
y = 3:5

x + y
sqrt(x+y)

x = c(5,2,9,12,2,4,9)

x[x %% 2 == 0]

x[x == 2]
x[x %in% c(2,9)]

ifelse(x > 6, 2*x, 3*x)