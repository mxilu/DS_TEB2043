m <- c(33, 24, 54, 94, 16, 89, 60, 6, 77, 61, 13, 44, 26, 24, 73, 73, 90, 39, 90, 54)
a <- b <- c <- d <- e <- f <- 0

for (grade in m) {
  if (grade <= 49) {
    f <- f + 1
  } else if (grade <= 59) {
    e <- e + 1
  } else if (grade <= 69) {
    d <- d + 1
  } else if (grade <= 79) {
    c <- c + 1
  } else if (grade <= 89) {
    b <- b + 1
  } else {
    a <- a + 1
  }
}

cat("Number of students who got A:", a, "\n")
cat("Number of students who got B:", b, "\n")
cat("Number of students who got C:", c, "\n")
cat("Number of students who got D:", d, "\n")
cat("Number of students who got E:", e, "\n")
cat("Number of students who got F:", f, "\n")

pass <- m > 49
print(pass)