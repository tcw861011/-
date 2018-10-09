my_mat <- matrix(1:9, nrow = 3)
my_mat[2, 3]

my_mat <- matrix(1:9, nrow = 3)
filter <- my_mat %% 2 == 1
my_mat[filter]

team_name <- c("Chicago Bulls", "Golden State Warriors")
wins <- c(72, 73)
losses <- c(10, 9)

is_champion <- c(TRUE, FALSE)
season <- c("1995-96", "2015-16")

great_nba_teams <- data.frame(team_name, wins, losses, is_champion, season, stringsAsFact)

# 利⽤ `$變數名稱`
great_nba_teams$is_champion

# 利⽤`[, "變數名稱"]`
great_nba_teams[, "is_champion"]