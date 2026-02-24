year <- as.integer(readline(prompt = "Input year: "))

if (year %% 400 == 0){
  cat("Output: ", year, "is a leap year")
} else if (year %% 100 == 0){
  cat("Output: ", year, "is not a leap year")
} else if (year %% 4 == 0){
  cat("Output: ", year, "is a leap year")
} else{
  cat("Output: ", year, "is not a leap year")
}