# Load necessary libraries
library(ggplot2)
library(dplyr)
library(tidyr)
library(corrplot)
library(DataExplorer)
library(gridExtra)


install.packages("DataExplorer")
library(DataExplorer)


plot_missing(data)



# 3. Univariate Analysis
## Numeric Variables
hist(data$Age, breaks = 30, col = "lightblue", main = "Age Distribution", xlab = "Age")
boxplot(data$Fare, main = "Boxplot of Fare", col = "lightgreen")

## Categorical Variables
barplot(table(data$Sex), main = "Gender Distribution", col = c("pink", "lightblue"))
barplot(table(data$Pclass), main = "Passenger Class Distribution", col = c("gold", "grey", "brown"))

# 4. Bivariate Analysis
## Survival by Gender
ggplot(data, aes(x = Sex, fill = factor(Survived))) +
  geom_bar(position = "dodge") +
  labs(title = "Survival by Gender", x = "Gender", y = "Count")

## Survival by Class
ggplot(data, aes(x = factor(Pclass), fill = factor(Survived))) +
  geom_bar(position = "dodge") +
  labs(title = "Survival by Class", x = "Class", y = "Count")

## Age vs Fare
plot(data$Age, data$Fare, main = "Age vs Fare", xlab = "Age", ylab = "Fare", col = "blue", pch = 19)

# 5. Correlation Analysis
numeric_data <- data %>% select(where(is.numeric))
corr_matrix <- cor(na.omit(numeric_data))
corrplot(corr_matrix, method = "color")

# 6. Feature Interactions
## Facet Plot for Survival by Age
ggplot(data, aes(x = Age, fill = factor(Survived))) +
  geom_histogram(bins = 30, alpha = 0.6, position = "identity") +
  facet_wrap(~ Pclass) +
  labs(title = "Survival by Age and Class")

## Fare Distribution by Class
boxplot(Fare ~ Pclass, data = data, col = c("red", "blue", "green"), main = "Fare by Passenger Class")

# 7. Outlier Detection
boxplot.stats(data$Fare)$out  # Outliers in Fare
boxplot.stats(data$Age)$out   # Outliers in Age

# 8. Density Plots
ggplot(data, aes(x = Age, fill = factor(Survived))) +
  geom_density(alpha = 0.5) +
  labs(title = "Density Plot of Age by Survival")

# 9. Pairwise Plots
pairs(numeric_data, col = data$Survived + 1)

# 10. Automating EDA with DataExplorer
create_report(data)
