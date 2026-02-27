student.newrow <- data.frame(
  name = c("Emily"),
  score = c(14.5),
  attempts = c(1),
  qualify = c("yes")
)

studentdf <- rbind(student.newcol, student.newrow) 
#bind the dataframe with the new added column to another dataframe

studentdf