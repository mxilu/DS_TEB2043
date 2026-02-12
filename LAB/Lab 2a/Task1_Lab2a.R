weight <- as.numeric(readline(prompt= "What is your weight. TELL ME: "))

height <- as.numeric(readline(prompt="What is your heightt: "))

bmi <- weight / (height^2)

print(weight)
print(height)
print(bmi)

if (bmi <= 18.5) {
  Uw <- TRUE
  N <- FALSE
  Ow <- FALSE
  Ob <- FALSE
} else if (bmi <= 24.9) {
  Uw <- FALSE
  N <- TRUE
  Ow <- FALSE
  Ob <- FALSE
} else if (bmi <= 29.9) {
  Uw <- FALSE
  N <- FALSE
  Ow <- TRUE
  Ob <- FALSE
} else {
  Uw <- FALSE
  N <- FALSE
  Ow <- FALSE
  Ob <- TRUE
}

cat(
  "Underweight:", Uw,
  "\nNormal:", N,
  "\nOverweight:", Ow,
  "\nObese:", Ob
)