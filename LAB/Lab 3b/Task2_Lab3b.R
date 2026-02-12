
student_record <- list(
  name = c("Robert", "Hemsworth", "Scarlett", "Evans", "Pratt", "Larson", "Holland", "Paul", "Simu", "Renner"),
  
  score = c(59,71,83,68,65,57,62,92,92,59)
  
)

max_score <- max(student_record$score)
min_score <- min(student_record$score)
avg_score <- mean(student_record$score)
max_stud <- student_record$name[student_record$score == max_score]
min_stud <- student_record$name[student_record$score == min_score]

cat("Highest Score: ",max_score, "\n")
cat("Lowest Score: ",min_score, "\n")
cat("Average Score: ",avg_score, "\n")
cat("Student with highest score: ",max_stud, "\n")
cat("Student with lowest score: ",min_stud, "\n")
  
