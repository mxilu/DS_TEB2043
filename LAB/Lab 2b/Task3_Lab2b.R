name <- readline(prompt="Enter your name: ")
phone <- readline(prompt="Enter your phone number: ")
digits <- strsplit(phone, "")[[1]]

cat("Hi, ", toupper(name), " . A verification code has been sent to ", digits[c(1,2,3)], "-xxxxx ", digits[(length(digits)-3):length(digits)])