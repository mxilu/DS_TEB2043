studentdf$name <- as.factor(studentdf$name)
studentdf$score <- as.numeric(studentdf$score)
studentdf$attempts <- as.numeric(studentdf$attempts)
studentdf$qualify <- as.factor(studentdf$qualify)

cat("Structure of data frame:")
str(studentdf)
cat("Summary of data frame:")
summary(studentdf)
cat("No of rows: ", nrow(studentdf), "\nNo of columns: ", ncol(studentdf))


