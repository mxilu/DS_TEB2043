v1 <- c(2, 3, 1, 5, 4, 6, 8, 7, 9)

M1 <- matrix(v1, nrow =3, byrow = TRUE) #elements arranged by row
print(M1)

M2 <- matrix(v1, nrow =3, byrow = FALSE) #elements arranged by column
print(M2)

addition <- M1 + M2
cat("Result of addition", "\n")
print(addition)

subtraction <- M1 - M2
cat("Result of subtraction", "\n")
print(subtraction)

multiply <- M1 * M2
cat("Result of multiplication", "\n")
print(multiply)

divide <- M1 / M2
cat("Result of division", "\n")
print(divide)
