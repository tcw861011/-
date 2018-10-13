my_arr <- array(1:1000, dim = c(10, 10, 10))
my_arr[5, 2, 4]

title <- "Worst NBA Teams"
teams <- c("Charlotte Bobcats", "Philadelphia 76ers")
wins <- c(7, 9)
losses <- c(59, 73)
worst_nba_teams <- list(title, teams, wins, losses)
worst_nba_teams[[3]]

title <- "Worst NBA Teams"
teams <- c("Charlotte Bobcats", "Philadelphia 76ers")
wins <- c(7, 9)
losses <- c(59, 73)
worst_nba_teams <- list(Title = title, Teams = teams, Wins = wins, Losses = losses)
worst_nba_teams$Teams