library(dplyr)
library(readxl)
library(xlsx)
library(stringr)

titanic_df <- titanic
head(titanic_df)
summary(titanic_df)

titanic_df <- titanic_df %>% distinct()
titanic_df <- titanic_df %>% mutate (
  Age = ifelse(is.na(Age), median(Age, na.rm = TRUE), Age),
  Age = as.integer(Age),
  Fare = round(Fare, 2),
  Ticket = str_to_upper(Ticket),
  Ticket = str_squish(Ticket),
  Ticket = str_replace_all(Ticket, "[^A-Z0-9]", ""),
  Embarked = recode (Embarked, "C" = "Cherbourg", "Q" = "Queenstown", "S" = "Southampton"),
  Embarked = ifelse(is.na(Embarked), median(Embarked, na.rm = TRUE), Embarked)
)
mean(is.na(titanic_df$Cabin)) * 100

titanic_df <- titanic_df %>% select (-Cabin)

titanic_df$Survived <- factor(titanic_df$Survived, levels=c(0,1), labels=c("Not survived", "Survived"))

View(titanic_df)

barplot(table(titanic_df$Sex, titanic_df$Survived),
        beside = TRUE,
        col = c("steelblue","pink"),
        main = "Survival by Gender",
        xlab = "Survival Status",
        ylab = "Frequency",
        legend = c("Female","Male"))

percentmalenotsurvived <- round(sum(titanic_df$Survived == "Not survived" & titanic_df$Sex == "male") /sum(titanic_df$Sex == "male") * 100, 2)
percentfemalesurvived <- round(sum(titanic_df$Survived == "Survived" & titanic_df$Sex == "female") / sum(titanic_df$Sex == "female") * 100, 2)
cat(percentmalenotsurvived, "% male passengers did not survive the titanic incident while ", percentfemalesurvived, "% female passengers survived the titanic incident.")

