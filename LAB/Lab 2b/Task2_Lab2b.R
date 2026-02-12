text1 <- readline(prompt="Enter String 1: ")
text2 <- readline(prompt="Enter String 2: ")

if (text1 == text2){
  similarity <- TRUE
}else{
  similarity <- FALSE
}

cat("This program compares 2 strings. Both inputs are similar: ", similarity)