array1 <- array(c(1:24), dim = c(2, 4, 3)) #2 rows, 4 columns, 3 tables
cat("Array 1", "\n")
print(array1)

array2 <- array(c(25:54), dim = c(3, 2, 5)) #3 rows, 2 columns, 5 tables
cat("Array 2", "\n")
print(array2)

cat("2nd row of second matrix for array 1: ", "\n" , array1[2,,2]) #print 2nd row of 2nd matrix
cat("Element in 3rd row and 2nd column of array 2: ", "\n", array2[3,2,1]) #print 3rd row, 2nd column of 1st matrix
