#1. Generate a sequence from -5 to 5. 
#output:  [1]  1  2  3  4  5  6  7  8  9 10 11
#If i use the : operator, the output will be 1 to 11, but if i change it into a comma, the output will be -5 to 5.

sequence <- seq(-5:5)
sequence 

#b.  What will be the value of x?
#Value of will be a sequence from 1 to 7
x <- 1:7
x

#2. Create a vector using seq() function.
#Output: [1] 1.0 1.2 1.4 1.6 1.8 2.0 2.2 2.4 2.6 2.8 3.0
#The numbers are sequence but in 0.2 interval. 
seq(1, 3, by=0.2)

#3. Create a vector with the age of the factory workers. 

age <- c(34, 28, 22, 36, 27, 18, 52, 39, 42, 29, 35, 31, 27,
         22, 37, 34, 19, 20, 57, 49, 50, 37, 46, 25, 17, 37, 43, 53, 41, 51, 35,
         24,33, 41, 53, 40, 18, 44, 38, 41, 48, 27, 39, 19, 30, 61, 54, 58, 26,
         18)

#a. Accessing the 3rd element. The third element is 22.

element_3 <- age[3]
element_3

#b. Access 2nd and 4th element. The second element is 28 while the fourth element is 36. 

element_2 <- age[2]
element_4 <- age [4]
element_2
element_4

#c. Access all but the 4th and 12th element is not included.
# Element 4 is 36 while element 12 is 31. 
age[c(-4,-12)]

#4. Create a vector then named the vector, names(x)
#Output: first second  third 
#           3      0      9 
names <-  c("first"=3, "second"=0, "third"=9)
names

#Output: first third 
 #         3     9 
names[c("first", "third")]

#5. Create a sequence x from -3:2.
#Output: [1] 1 2 3 4 5 6
 sequence <- seq(-3:2)
sequence

#Output: [1] 1 0 3 4 5 6
#a. Modify 2nd element and change it into 0. 
sequence[2] <- 0 
sequence

#6. a. Create a data frame for month, price per liter (php) and purchase-quantity (liter). Write the R scripts and its output.

# Create a data frame directly
diesel <- data.frame(
  Month = c("Jan", "Feb", "March", "Apr", "May", "June"),
  Price_Per_Liter = c(52.50, 57.25, 60.00, 65.00, 74.25, 54.00),
  Purchase_Quantity = c(25, 30, 40, 50, 10, 45)
)

diesel

# Calculate the weighted mean of fuel expenditure
average_expenditure <- weighted.mean(diesel$Price_Per_Liter, diesel$Purchase_Quantity)

# Print the average fuel expenditure
average_expenditure


#7. Create a vector data with 7 elements.

data <- c(length(rivers), sum(rivers), mean(rivers), median(rivers), var(rivers),
          sd(rivers), min(rivers), max(rivers))
data

#The results are: [1]    141.0000  83357.0000    591.1844    425.0000 243908.4086
#  [6]    493.8708    135.0000   3710.0000

#8. Create vectors according to the table. 

#a.
Celeb <- data.frame(
power_ranking= 1:25,
celebrities = c("Tom Cruise", "Rolling Stones", "Oprah Winfrey", "U2", "Tiger Woods", "Steven Spielberg", "Howard Stern", "50 Cent", "Cast of Sopranos", "Dan Brown", "Bruce Springsteen", "Donald Trump", "Muhammad Ali", "Paul McCartney", "George Lucas", "Elton John", "David Letterman", "Phil Mickelson", "J.K. Rowling", "Bradd Pitt", "Peter Jackson", "Dr. Phil McGraw", "Jay Lenon", "Celine Dion", "Kobe Bryant"),
annual_pay = c(67, 90, 225, 110, 90, 332, 302, 41, 52, 88, 55, 44, 55, 40, 233, 34, 40, 47, 75, 25, 39, 45, 32, 40, 31)
)
Celeb 
#b. Modify the power ranking and pay of J.K. Rowling. Change power ranking to 15 and pay to 90.
  
  power_ranking[19] <- 15
  annual_pay[19] <- 90
power_ranking 
annual_pay 


celeb <- data.frame(
  PowerRanking = power_ranking,
  Celebrities = celebrities,
  Pay = annual_pay)
celeb 

#c. Install and load the 'writexl' library for writing Excel files.
 
install.packages("writexl")
 library(writexl)
write_xlsx(Celeb,path="PowerRanking.xlsx")
write.csv(Celeb,file= "PowerRanking.csv", row.names = FALSE)

#d. 
subset_data <- Celeb[10:20,]
save(subset_data, file = "Ranks.RData")
print(subset_data)

#e. This script will create an RData file named "Ranks.RData" containing the subset of rows from 10 to 20 from the original data frame.

#9. 
#a.

library(readxl)
ExcelDta <- read_excel("hotels-vienna.xlsx")
ExcelDta

#b.
dimensions <- dim(ExcelDta)
dimensions

#c.
selected_columns <- ExcelDta[,c("country", "neighbourhood", "price", "stars", "accommodation_type", "rating")]
head(selected_columns, n = nrow(selected_columns))

#d. 
save(selected_columns, file = "new.RData")

#e.
load("new.RData")
head(selected_columns)
tail(selected_columns)


#10. 
#a.
vegetables <- c("Potatoes", "Tomato", "Eggplant", "Kale", "Cocumber","Bell Pepper", "Radish", "Cabbage", "Lettuce", "Carrots")
vegetables

#b.
vegetables <- c(vegetables, "Onion", "Spinach")
vegetables

#c.
vegetables <- append(vegetables, c("Zucchini", "Swiss Chard", "Beets","Garlic", "Leeks"), after = 5)
num_datapoints <- length(vegetables)
vegetables 
cat("Number of Data Points: ", num_datapoints, "\n")

#d. 
vegetables <- vegetables[-c(5, 10, 15)]
num_vegetables_left <- length(vegetables)
cat("Number of vegetables left: ", num_vegetables_left, "\n")











