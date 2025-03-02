# here is where you clean any of the data downloaded, before doing eda

library(tidyverse)

# titanic dataset
titanic <- read.csv("data/titanic.csv")

head(titanic)

titanic_clean <- titanic %>%
  rename_with(tolower) %>%  # Convert column names to lowercase
  mutate(survived = survived == 1) %>%  # Convert survived to TRUE/FALSE
  select(-name, -ticket) %>% # Remove the name column
  rename(id = passengerid, # give more interpretable column names
         class = pclass,
         sib_sp_onboard = sibsp,
         par_ch_onboard = parch, 
         port = embarked)

head(titanic_clean)

write_csv(titanic_clean, "data/titanic-clean.csv")
