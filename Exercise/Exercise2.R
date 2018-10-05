# 數值的運算
first_num <- 8
second_num <- 7
first_num + second_num
first_num - second_num
first_num * second_num
first_num / second_num
first_num^second_num
first_num %% second_num

# 整數的運算
first_int <- 8L
second_int <- 7L
ans <- first_int * second_int
ans
class(ans)
ans <- first_int / second_int
ans
class(ans)

# 數值與整數的運算
my_num <- 8
my_int <- 7L
ans <- my_num + my_int
class(ans)

# 邏輯值的運算
my_num <- 0
my_int <- 0L
my_logi <- FALSE
my_num == my_logi
my_int == my_logi
my_num <- 1
my_int <- 1L
my_logi <- TRUE
my_num == my_logi
my_int == my_logi

# 數值、整數與邏輯值的運算
my_logi <- TRUE
ans <- my_num + my_int + my_logi
ans
class(ans)
my_logi <- FALSE
ans <- my_num + my_int + my_logi
ans
class(ans)

# 使⽤C函數集結元素
x <- c(1,2,3,4) #數字向量
x
season_1 <- "spring"
season_2 <- "summer"
season_3 <- "autumn"
season_4 <- "winter"
four_seasons <- c("spring", "summer", "autumn", "winter") #⽂字向量
four_seasons
rep("2", times = 10)
rep("R", times = 10)
seq(from = 1, to = 10, by = 1) #等差函數
1:10

#⽅法⼀：中括號搭配索引值
favorite_season <- four_seasons[3]
favorite_season
favorite_seasons <- four_seasons[c(-2, -4)] # 我喜歡春天或秋天
favorite_seasons

#⽅法⼆：判斷運算⼦
my_favorite_season <- four_seasons == "autumn"
four_seasons[my_favorite_season]
my_favorite_seasons <- four_seasons == "spring" | four_seasons == "autumn" # 我喜歡春天或秋天
four_seasons[my_favorite_seasons]

#建立矩陣
my_mat <- matrix(1:6, nrow = 2)
my_mat
my_mat <- matrix(1:6, nrow = 2, ncol = 3, byrow = TRUE)
my_mat

#資料框架
team_name <- c("Chicago Bulls", "Golden State Warriors")
wins <- c(72, 73)
losses <- c(10, 9)
is_champion <- c(TRUE, FALSE)
season <- c("1995-96", "2015-16")
great_nba_teams <- data.frame(team_name, wins, losses, is_champion, season)
#⽅法⼀：
stringsAsFactors = FALSE
great_nba_teams <- data.frame(team_name, wins, losses, is_champion, season, stringsAsFactors = FALSE)
#⽅法⼆:
as.character()
great_nba_teams <- data.frame(team_name, wins, losses, is_champion, season)
great_nba_teams[, 1] <- as.character(great_nba_teams[, 1])
great_nba_teams[, 5] <- as.character(great_nba_teams[, 5])

#從資料框架選出變數
team_name <- c("Chicago Bulls", "Golden State Warriors")
wins <- c(72, 73)
losses <- c(10, 9)
is_champion <- c(TRUE, FALSE)
season <- c("1995-96", "2015-16")
great_nba_teams <- data.frame(team_name, wins, losses, is_champion, season)
#⽅法⼀：中括號搭配索引值
great_nba_teams[1, 1] # 選出第⼀個變數的第⼀個觀測值 "Chicago Bulls"
great_nba_teams[1, ] # 選出第⼀個觀測值
great_nba_teams[, 1] # 選出第⼀個變數
#⽅法⼆：使⽤變數名稱來選擇
great_nba_teams[, "season"]
# **⽅法三：使⽤變數名稱與$來選擇**
great_nba_teams$team_name
#⽅法四：使⽤判斷運算⼦
great_nba_teams <- data.frame(team_name, wins, losses, is_champion, season, stringsAsFactors = FALSE)
filter <- great_nba_teams$is_champion == TRUE
great_nba_teams[filter, ] # 注意這個逗號

#建立陣列
my_arr <- array(1:20, dim = c(2, 2, 5))
my_arr

#從陣列選出變數
my_arr <- array(1:20, dim = c(2, 2, 5))
my_arr[, , 1] # 第⼀個矩陣
my_arr[, , 2] # 第⼆個矩陣
my_arr[, , 3] # 第三個矩陣
my_arr[, , 4] # 第四個矩陣
my_arr[, , 5] # 第五個矩陣
my_arr[1, , 2] # 選出第⼆個矩陣的第⼀個 row（觀察值）
my_arr[, 2, 2] # 選出第⼆個矩陣的第⼆個 column （變數）
my_arr[1, 2, 2] # 選出 7（元素）

#從清單選出變數
list(1,2,3)
list(c(1,2,3))
list3 <- list(c(1,2,3), 3:7)
