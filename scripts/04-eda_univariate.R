# do single plots here


# for any numerical column, you may want a distribution OR a boxplot
# for categorical, you'll want bar charts

# load titanic data
data <- read.csv("data/titanic.csv")


# Numerical eda

# when to do histograms or bar charts (bin size)
# examples
hist(data$age, 
     breaks = 30, col = "lightblue", 
     main = "Age Distribution", xlab = "Age")

boxplot(data$fare, 
        main = "Boxplot of Fare", col = "lightgreen")

# need to make functions that will repeat same plot for all numerical features

# Categorical eda

barplot(table(data$sex), 
        main = "Gender Distribution", 
        col = c("pink", "lightblue"))
barplot(table(data$class), 
        main = "Passenger Class Distribution", 
        col = c("gold", "grey", "brown"))

# same as numerical, need to make functions

# also contains logic
