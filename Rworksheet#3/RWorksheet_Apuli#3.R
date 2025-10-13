---
title: "RWorksheet_apuli#3a.Rmd"
author: "Marian Apuli"
date: "2025-10-13"
output: pdf_document
---

# 1. Using LETTERS

# a. First 11 letters
first_11 <- LETTERS[1:11]
first_11

# b. Odd numbered letters
odd_letters <- LETTERS[seq(1, 26, 2)]
odd_letters

# c. Vowels
vowels <- LETTERS[c(1,5,9,15,21)]  # A, E, I, O, U
vowels

# d. Last 5 lowercase letters
last_5 <- letters[22:26]
last_5

# e. Letters 15 to 24 lowercase
letters_15_24 <- letters[15:24]
letters_15_24

# 2. City and temperature vectors

city <- c("Tuguegarao City", "Manila", "Iloilo City", "Tacloban", "Samal Island", "Davao City")
temp <- c(42, 39, 34, 34, 30, 27)

# c. Data frame
df <- data.frame(city, temp)
df

# d. Rename columns
names(df) <- c("City", "Temperature")
df

# e. Structure
str(df)

# f. Rows 3 and 4
df[3:4, ]

# g. City with highest and lowest temperature
df$City[which.max(df$Temperature)]
df$City[which.min(df$Temperature)]

# 3. Matrices

# a. Matrix with given values
mat <- matrix(c(1:8, 11:14), nrow = 3, ncol = 4)
mat

# b. Multiply matrix by 2
mat2 <- mat * 2
mat2

# c. Row 2 content
mat[2, ]

# d. Columns 3 and 4, rows 1 and 2
mat[1:2, 3:4]

# e. Columns 2 and 3, row 3
mat[3, 2:3]

# f. Column 4 only
mat[,4]

# g. Name rows and columns
rownames(mat) <- c("isa", "dalawa", "tatlo")
colnames(mat) <- c("uno", "dos", "tres", "quatro")
mat

# h. Reshape matrix to 6 rows, 2 columns
dim(mat) <- c(6, 2)
mat

# 4. Arrays

vals <- c(1,2,3,6,7,8,9,0,3,4,5,1)
vals2 <- rep(vals, 2)
arr <- array(vals2, dim = c(2, 4, 3))
arr

# b. Number of dimensions
length(dim(arr))

# c. Name rows, columns, dimensions
rownames(arr) <- letters[1:2]
colnames(arr) <- LETTERS[1:4]
dimnames(arr) <- list(letters[1:2], LETTERS[1:4],
                      c("1st-Dimensional Array", "2nd-Dimensional Array", "3rd-Dimensional Array"))
                      

