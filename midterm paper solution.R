# Step 1: Creating the employee_data dataframe manually
employee_data <- data.frame(
  Emp_ID = c("E1", "E2", "E3", "E4", "E5", "E6", "E7", "E8"),
  Name = c("X", "Y", "Z", "X", "Y", "Z", "X", "Y"),
  Age = c(34, 29, 40, 30, 35, 27, 41, 30),
  Dept = c("HR", "IT", "Finance", "Marketing", "HR", "IT", "Finance", "Marketing"),
  Salary = c(50000, 60000, 70000, 80000, 50000, 65000, 45000, 60000),
  Gender = c("Male", "Female", "Male", "Female", "Male", "Female", "Male", "Female"),
  Experience = c(5, 3, 10, 4, 2, 7, 9, 6)
)
# View the dataset
print(employee_data)
# Employee Salary Vector
salary <- c(50000, 60000, 70000, 80000, 50000, 65000, 45000, 60000)

# Average Salary
avg_salary <- mean(salary)

# Output
print(paste("Average Salary is:", avg_salary))
# Employee Ages Vector
ages <- c(34, 29, 40, 30, 35, 27, 41, 30)

# Minimum and Maximum Age
min_age <- min(ages)
max_age <- max(ages)

# Output
print(paste("Minimum Age is:", min_age))
print(paste("Maximum Age is:", max_age))

# Employee E1 Details as a List
employee_E1 <- list(
  Name = "X",
  Department = "HR",
  Age = 34,
  Salary = 50000
)

# Displaying each element
print(paste("Name:", employee_E1$Name))
print(paste("Department:", employee_E1$Department))
print(paste("Age:", employee_E1$Age))
print(paste("Salary:", employee_E1$Salary))

# Vectors
age <- c(34, 29, 40, 30, 35, 27, 41, 30)
salary <- c(50000, 60000, 70000, 80000, 50000, 65000, 45000, 60000)

# Mean
mean_age <- mean(age)
mean_salary <- mean(salary)

# Standard Deviation
sd_age <- sd(age)
sd_salary <- sd(salary)

# Correlation between Age and Salary
correlation <- cor(age, salary)

# Output
print(paste("Mean Age:", mean_age))
print(paste("Mean Salary:", mean_salary))
print(paste("SD of Age:", sd_age))
print(paste("SD of Salary:", sd_salary))
print(paste("Correlation between Age and Salary:", correlation))

# question 03 
# Load required package
library(ggplot2)

# Load dataset
data(mtcars)

# i. Scatter plot: horsepower vs miles per gallon
ggplot(mtcars, aes(x = hp, y = mpg)) +
  geom_point(color = "darkblue", size = 3) +
  geom_smooth(method = "lm", color = "red", se = FALSE, linetype = "dashed") +
  labs(
    title = "Relationship between Horsepower and Miles per Gallon",
    x = "Horsepower (hp)",
    y = "Miles per Gallon (mpg)"
  ) +
  theme_minimal()

# ii. Box plot: miles per gallon across different cylinder counts
ggplot(mtcars, aes(x = factor(cyl), y = mpg, fill = factor(cyl))) +
  geom_boxplot() +
  labs(
    title = "Miles per Gallon by Number of Cylinders",
    x = "Number of Cylinders",
    y = "Miles per Gallon (mpg)"
  ) +
  scale_fill_brewer(palette = "Pastel1") +
  theme_minimal()

# iii. Histogram: distribution of car weights
ggplot(mtcars, aes(x = wt)) +
  geom_histogram(bins = 8, fill = "skyblue", color = "black") +
  labs(
    title = "Distribution of Car Weights",
    x = "Weight (1000 lbs)",
    y = "Frequency"
  ) +
  theme_minimal()






