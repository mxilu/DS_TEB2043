print("Check whether an n digits number is Armstrong or not: ")

num <- as.numeric(readline(prompt = "Input an integer: "))

digits <- as.numeric(strsplit(as.character(num), "")[[1]])

n <- length(digits)

isarmstrong <- sum(digits^n)

if (isarmstrong == num){
  cat(num, "is an Armstrong number")
} else{
  cat(num, "is not an Armstrong number")
}
