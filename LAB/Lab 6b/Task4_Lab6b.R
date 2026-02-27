studentdf$name <- as.factor(studentdf$name)
studentdf$score <- as.numeric(studentdf$score)
studentdf$attempts <- as.numeric(studentdf$attempts)
studentdf$qualify <- as.factor(studentdf$qualify)

summary(studentdf)

