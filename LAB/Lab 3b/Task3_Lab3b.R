
student_record <- list(
  name = c("Robert", "Hemsworth", "Scarlett", "Evans", "Pratt", "Larson", "Holland", "Paul", "Simu", "Renner"),
  
  chemist = c(59,71,83,68,65,57,62,92,92,59),
  
  physics = c(89,86,65,52,60,67,40,77,90,61)
)

fail_p <- 0
fail_c <- 0
max_physics <- max(student_record$physics)
max_chemist <- max(student_record$chemist)
best_stud <- student_record$name[(student_record$physics == max_physics) & (student_record$chemist == max_chemist) ]

for (p in student_record$physics) {
  if (p <= 49) {
    fail_p <- fail_p + 1
  }
}

for (c in student_record$chemist) {
  if (c <= 49) {
    fail_c <- fail_c + 1
  }
}

cat("Students who failed Physics: ",fail_p, "\n")
cat("Students who failed Chemistry: ",fail_c, "\n")
cat("Student with highest Physics and Chemistry score: ",best_stud, "\n")

