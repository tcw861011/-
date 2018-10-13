beyond_start <- as.Date("1983-12-31")
as.integer(beyond_start)

beyond_start <- as.Date(" 1983-12-31")
days_diff <- Sys.Date() - beyond_start # 計算天數差距
years_diff <- days_diff / 365 # 除以 365 換算成年

major_quake_time <- "1999-09-21 01:47:16"
first_aftershock_time <- "1999-09-21 01:57:15"

major_quake_time <- as.POSIXct(major_quake_time)
first_aftershock_time <- as.POSIXct(first_aftershock_time)
first_aftershock_time - major_quake_time
