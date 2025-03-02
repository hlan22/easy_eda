# here we will review basic ways to get summaries of a dataset
# give overview of size, missing values, and basic summaries of the data
# NO plots or images about the features!

library(tidyverse)

# for this script, we will use the 'titanic.csv' dataset as an example

# when reading dataset, we will call it 'data' so that it is easy to replicate with any given dataset
data <- read.csv("data/titanic-clean.csv")

# first, check the size
dim(data)  # 891 rows and 12 columns!

# next, take a look at heading of data
head(data, 5)

# lets look at column types
str(data)

# understand the range of data/missing vals
summary(data)


# Checking missing values
colSums(is.na(data))

percent_missing_data <- 100 * colSums(is.na(data)) / nrow(data)
percent_missing_data

