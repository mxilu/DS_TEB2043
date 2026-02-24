age <- c(55,57,56,52,51,59,58,53,59,55,60,60,60,60,52,55,56,51,60, 
         52,54,56,52,57,54,56,58,53,53,50,55,51,57,60,57,55,51,50,57,58)

age_sort <- sort(factor(age))

print(age_sort)

age_counts <- table(factor(age_sort, levels = 50:60)) #create a table that takes the age_sort list and then count based on level

age_df <- data.frame(
  Age = as.integer(names(age_counts)),
  Total = as.integer(age_counts)
)
print(age_df)

age_range <- cut(age, breaks = c(49, 52, 54, 56, 58, 60), labels = c("50-52", "52-54", "54-56", "56-58", "58-60"))
group_counts <- tapply(age, age_range, length) #it takes the age list, then group according to age range, and then calculate the length for each age group

age_group <- data.frame(
  Group = names(group_counts), 
  Total = as.integer(group_counts)
)

print(age_group)

