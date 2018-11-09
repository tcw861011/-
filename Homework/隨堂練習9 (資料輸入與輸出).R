url <- "http://archive.ics.uci.edu/ml/machine-learning-databases/iris/bezdekIris.data"
iris_df <- read.table(url, header = TRUE, sep = ",")

url <- "http://archive.ics.uci.edu/ml/machine-learning-databases/iris/bezdekIris.data"
iris_df <- read.table(url, header = FALSE, sep = ",")
names(iris_df) <- c("sepal length", "sepal width", "petal length", "petal width", "class")

file_path <- "cars.csv" # ⾃訂
write.csv(cars, file = file_path, row.names = FALSE)