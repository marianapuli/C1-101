---
title: "RWorksheet_apuli#3b.Rmd"
author: "Marian Apuli"
date: "2025-10-13"
output: pdf_document
---

# -------------------------------
# 1. Create a Data Frame
# -------------------------------

# a. Create a data frame
household <- data.frame(
  Name = c("Ana", "Ben", "Cara", "Dan", "Eva"),
  Sex = c("Female", "Male", "Female", "Male", "Female"),
  Age = c(15, 16, 14, 15, 17),
  Type_of_House = c("Wood", "Concrete", "Semi-Concrete", "Wood", "Concrete"),
  Father_Occupation = c("Farmer", "Driver", "Farmer", "Farmer", "Others"),
  Number_of_Siblings_Attending = c(4, 5, 6, 3, 5)
)
household

# b. Describe the data
str(household)
summary(household)

# c. Check if mean number of siblings attending is 5
mean_siblings <- mean(household$Number_of_Siblings_Attending)
mean_siblings
mean_siblings == 5

# d. Extract the 1st two rows and all columns
household[1:2, ]

# e. Extract 3rd and 5th row with 2nd and 4th column
household[c(3,5), c(2,4)]

# f. Select the variable Type_of_House and store as types_houses
types_houses <- household$Type_of_House
types_houses

# g. Select all Male respondents whose father’s occupation was Farmer
male_farmer <- subset(household, Sex == "Male" & Father_Occupation == "Farmer")
male_farmer

# h. Select all Female respondents with >=5 siblings attending school
female_5sibs <- subset(household, Sex == "Female" & Number_of_Siblings_Attending >= 5)
female_5sibs

# -------------------------------
# 2. Create an Empty Data Frame
# -------------------------------

df <- data.frame(
  Ints = integer(),
  Doubles = double(),
  Characters = character(),
  Logicals = logical(),
  Factors = factor(),
  stringsAsFactors = FALSE
)

print("Structure of the empty dataframe:")
str(df)

# -------------------------------
# 3. Working with CSV Files
# -------------------------------

# a. Create and save as CSV
write.csv(household, "HouseholdData.csv", row.names = FALSE)

# b. Import the CSV
household_csv <- read.csv("HouseholdData.csv")
household_csv

# c. Convert Sex into factor (Male = 1, Female = 2)
household_csv$Sex <- factor(household_csv$Sex, levels = c("Male", "Female"), labels = c(1, 2))
household_csv

# d. Convert Type_of_House into factor (Wood = 1, Concrete = 2, Semi-Concrete = 3)
household_csv$Type_of_House <- factor(
  household_csv$Type_of_House,
  levels = c("Wood", "Concrete", "Semi-Concrete"),
  labels = c(1, 2, 3)
)
household_csv

# e. Convert Father_Occupation into factor (Farmer = 1, Driver = 2, Others = 3)
household_csv$Father_Occupation <- factor(
  household_csv$Father_Occupation,
  levels = c("Farmer", "Driver", "Others"),
  labels = c(1, 2, 3)
)
household_csv

# f. Select all Female respondents whose father is Driver
female_driver <- subset(household_csv, Sex == 2 & Father_Occupation == 2)
female_driver

# g. Select respondents with >=5 siblings attending school
five_up_sibs <- subset(household_csv, Number_of_Siblings_Attending >= 5)
five_up_sibs

# -------------------------------
# 4. Interpret the Graph
# -------------------------------
# (Interpretation done in report or comments)
# Example:
# The graph likely shows the number of siblings attending school.
# Most respondents have between 4–6 siblings, indicating large household sizes.

install.packages("usethis")
usethis::use_git_config(user.name="Marian Apuli",user.email="marian.apuli@students.isatu.edu.ph")