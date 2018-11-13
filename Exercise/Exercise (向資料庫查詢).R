# installing package
install.packages("RMySQL")
# library package
library(DBI)

# chicago_bulls
host <- "rsqltrain.ced04jhfjfgi.ap-northeast-1.rds.amazonaws.com"
port <- 3306
dbname <- "nba"
user <- "trainstudent"
password <- "csietrain"
engine <- dbConnect(RMySQL::MySQL(),
                    host = host,
                    port = port,
                    dbname = dbname,
                    user = user,
                    password = password
)
chicago_bulls <- dbReadTable(engine, name = 'chicago_bulls')

# Useful functions to examine a data.frame
class(chicago_bulls)
View(chicago_bulls)
head(chicago_bulls)
tail(chicago_bulls)
dim(chicago_bulls)
nrow(chicago_bulls)
ncol(chicago_bulls)
summary(chicago_bulls)
str(chicago_bulls)
    
# extract partial observations from database
engine <- dbConnect(RMySQL::MySQL(),
                    host = host,
                    port = port,
                    dbname = dbname,
                    user = user,
                    password = password
)
query_str <- "SELECT * FROM chicago_bulls WHERE Player IN ('Michael Jordan', 'Scottie Pippen', 'Dennis Rodman');"
trio <- dbGetQuery(engine, query_str)
dbDisconnect(engine)
dim(trio)


# boston_celtics 
host = "rsqltrain.ced04jhfjfgi.ap-northeast-1.rds.amazonaws.com"
port = 3306
dbname = "nba"
user = "trainstudent"
password = "csietrain"
engine <- dbConnect(RMySQL::MySQL(),
                    host = host,
                    port = port,
                    dbname = dbname,
                    user = user,
                    password = password
)
boston_celtics <- dbReadTable(engine, name = 'boston_celtics')

# extract partial observations from database
engine <- dbConnect(RMySQL::MySQL(),
                    host = host,
                    port = port,
                    dbname = dbname,
                    user = user,
                    password = password
)
query_str <- "SELECT * FROM boston_celtics WHERE Player IN ('Ray Allen', 'Kevin Garnett', 'Paul Pierce');"
gap <- dbGetQuery(engine, query_str)
dbDisconnect(engine)
dim(gap)

boston_celtics <- dbReadTable(engine, "boston_celtics")
dim(boston_celtics)
is_gap <- boston_celtics$No. %in% c(20, 5, 34)
gap <- boston_celtics[is_gap, ]
gap


# R: Firebase
install.packages("devtools")
devtools::install_github("Kohze/fireData")
library(fireData)

projectURL <- "https://data-science-in-action-23fe2.firebaseio.com/"
fileName <- "boston_celtics"
boston_celtics_list <- download(projectURL = projectURL, fileName = fileName)
class(boston_celtics_list)
wins <- boston_celtics_list$`-LQHTzXLuMyJyHmcwQvR`$records$wins
losses <- boston_celtics_list$`-LQHTzXLuMyJyHmcwQvR`$records$losses
winning_percentage <- wins / (wins + losses)
team_name <- boston_celtics_list$`-LQHTzXLuMyJyHmcwQvR`$team_name
sprintf("%s 在 2007-08 年的勝率是 %.2f%%", team_name, winning_percentage * 100)