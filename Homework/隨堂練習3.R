weekdays <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
favorite_day <- weekdays[c(-1,-2,-3,-4)]
favorite_day

weekdays <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
not_blue_monday <- weekdays != "Monday"
without_monday <- weekdays[c(-1)]
without_monday

speed_char <- c("slow", "fast")
speed_factor <- factor(speed_char, ordered =TRUE, levels = c("slow", "fast"))
speed_factor
