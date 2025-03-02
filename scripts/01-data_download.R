# space to download various online datasets
# purpose: this data will be used for eda examples

# downloading the titanic dataset
titanic_url <- "https://raw.githubusercontent.com/datasciencedojo/datasets/refs/heads/master/titanic.csv"
titanic_destination <- "data/titanic.csv"

download.file(titanic_url, titanic_destination)
print("The titanic dataset has sucessfully been downloaded!")
