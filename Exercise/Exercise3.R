#if-else條件判斷式
weather <- sample(c("sunny", "rainy"), size = 1)
weather
if (weather == "sunny"){
    print("Running outdoors!")
} else {
    print("Working out in the gym!")
}

score<-59
if(score>=60){
    print("及格")
}else{
    print("不及格")
}
score<-80
if(score>=60){
    print("及格")
}else{
    print("不及格")
}

my_seq <- 1:10
for (i in my_seq) {
    if (i %% 2 == 0) {
        print(paste(i, "是偶數"))
    } else {
        print(paste(i, "是奇數"))
    }
}

#if-else if-else 條件判斷式
weather <- sample(c("sunny", "rainy", "cloudy"), size = 1)
weather
if (weather == "sunny"){
    print("Running outdoors!")
} else if (weather == "cloudy"){
    print("Cycling!")
} else {
    print("Working out in the gym!")
}

score<-95
if(score>=90){
    print("優秀")
}else if(score>=60){
    print("及格")
}else{
    print("不及格")
}

my_seq <- 1:10
for (i in my_seq) {
    if (i %% 3 == 0) {
        print(paste(i, "可以被 3 整除"))
    } else if (i %% 3 == 1) {
        print(paste(i, "除以 3 餘數是 1"))
    } else {
        print(paste(i, "除以 3 餘數是 2"))
    }
}

weather <- sample(c("sunny", "cloudy", "drizzle", "showers", "storm"), size = 1)
weather
if (weather == "sunny"){
    print("Running outdoors!")
} else if (weather == "cloudy"){
    print("Cycling!")
} else if (weather == "drizzle") {
    print("Working out in the gym!")
} else {
    print("Couch potato.")
}

#ifelse()函數
score<-80
ifelse(score>=60,"及格","不及格")
scoreVector<-c(30,90,50,60,80)
ifelse(scoreVector>=60,"及格", "不及格")

#for迴圈
for (n in 1:10){
    #n為單⼀變數，1:10為需要逐⼀執⾏的參數向量
    print(n)
}

for (month in month.name){
    print(month)
}

#while迴圈
x <- 0
while (x<=5) {
    print(x)
    x<-x+1
}

i <- 1
while (i < 13){
    print(month.name[i])
    i <- i + 1
}

#兩種迴圈的運⽤時機
flip_results <- c() # 建立⼀個空的向量來放置每⼀次投擲的結果
coin <- c(TRUE, FALSE) # TRUE 代表正⾯，FALSE 代表反⾯
n_flips <- 1 # 從第⼀次投擲開始記錄
while (sum(flip_results) < 3){
    flip_results[n_flips] <- sample(coin, size = 1) # 將每次投擲結果記錄起來
    n_flips <- n_flips + 1 # 準備記錄下⼀次的投擲結果
}
flip_results # 印出每次投擲的紀錄
length(flip_results) # 總共投擲了幾次

#結合迴圈與流程控制
#break 敘述
for (month in month.name){
    if (month == "April"){
        break
    } else {
        print(month)
    }
}

#next 敘述
for (month in month.name){
    if (month == "April"){
        next
    } else {
        print(month)
    }
}

#外部函數 - 數值函數
#輸入的數值轉換為絕對值的函數
abs(-5)
abs(-5:-1)
abs("Hello")

#輸入的數值開根號的函數
sqrt(2)
sqrt(1:10)

#輸入的數值無條件進位的函數
ceiling(9.527)
nums <- sqrt(c(7, 17, 27, 37, 47))
nums
ceiling(nums)

#輸入的數值無條件捨去的函數
floor(9.527)
nums <- sqrt(c(7, 17, 27, 37, 47))
nums
floor(nums)

#指定保留幾個⼩數位數的函數
round(9.527)
round(9.527, digits = 0)
round(9.527, digits = 1)
round(9.527, digits = 2)

#輸入的數值 x 轉換為 ex 的函數
exp(1)
exp(2)

#輸入的數值取⾃然對數的函數
log(exp(1))
log(exp(2))
log(exp(3))

log10(10)
log10(10^2)
log10(10^3)

#外部函數 - ⽂字函數
toupper("Learn R the easy way")#大寫
tolower("Learn R the easy way")#小寫

#將輸入的⽂字擷取部分出來的函數
my_char <- "Learn R the easy way" 
substr(my_char, start = 1, stop = 5)
substr(my_char, start = 7, stop = 7)
substr(my_char, start = 9, stop = 11)
substr(my_char, start = 13, stop = 16)
substr(my_char, start = 18, stop = 20)

# ⾃訂函數
my_squared <- function(x){
    y <- x^2
    return(y)
}
# 呼叫函數
my_squared(2)
my_squared(-2:2)

# ⾃訂函數
circle_area <- function(r){
    area <- pi * r^2 # R 語⾔有內建圓周率 pi
    return(area)
}
# 呼叫函數
circle_area(3)
circle_area(5)

# ⾃訂函數
circle_circum <- function(r){
    circum <- 2 * pi * r # R 語⾔有內建圓周率 pi
    return(circum)
}
# 呼叫函數
circle_circum(3)
circle_circum(5)

# 定義⾃訂函數
ironmen_stats <- function(ironmen_vector) {
    max_ironmen <- max(ironmen_vector)
    min_ironmen <- min(ironmen_vector)
    ttl_groups <- length(ironmen_vector)
    ttl_ironmen <- sum(ironmen_vector)
    stats_list <- list(max_ironmen = max_ironmen,
                       min_ironmen = min_ironmen,
                       ttl_groups = ttl_groups,
                       ttl_ironmen = ttl_ironmen
    )
    return(stats_list)
}
# 呼叫⾃訂函數
ironmen <- c(50, 8, 16, 12, 6, 62)
paste("最多：", ironmen_stats(ironmen)$max_ironmen, sep = '')
paste("最少：", ironmen_stats(ironmen)$min_ironmen, sep = '')
paste("總組數：", ironmen_stats(ironmen)$ttl_groups, sep = '')
paste("總鐵⼈數：", ironmen_stats(ironmen)$ttl_ironmen, sep = '')

# ⾃訂函數
my_length <- function(x){
    counts <- 0
    for (i in x){
        counts <- counts + 1
    }
    return(counts)
}
# 建立⼀個向量
my_vec <- seq(from = 15, to = 87, by = 3)
# 呼叫內建（外部）與⾃訂函數
length(my_vec)
my_length(my_vec)

# 定義⾃訂函數
my_mean <- function(input_vector) {
    my_sum <- function(input_vector) {
        temp_sum <- 0
        for (i in input_vector) {
            temp_sum <- temp_sum + i
        }
        return(temp_sum)
    }
    my_length <- function(input_vector) {
        temp_length <- 0
        for (i in input_vector) {
            temp_length <- temp_length + 1
        }
        return(temp_length)
    }
    return(my_sum(input_vector) / my_length(input_vector))
}
# 呼叫⾃訂函數
my_vector <- c(51, 8, 18, 13, 6, 64)
my_mean(my_vector)
