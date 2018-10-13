week <- c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday")
for (day in week){
    print(day)
}

week <- c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday")
i <- 1
while (i < 8){
    print(week[i])
    i <- i + 1
}

week <- c("Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday")
for (day in week){
    if (day == "Monday"){
        next
    } else if (day == "Tuesday"){
        next 
    } else if (day == "Wednesday"){
        next 
    } else if (day == "Thursday"){
        next
    } else if (day == "Friday"){
        next   
    } else {
        print(day)
    }
}