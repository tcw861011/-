# ⾃訂函數
my_factorial <- function(n){
    n <- as.integer(n)
    ans <- 1
    for (i in 1:n){
        ans <- ans * i
    }
    return(ans)
}
# 呼叫函數
my_factorial(5)


# ⾃訂函數
my_mean <- function(x){
    my_sum <- 0
    my_length <- 0
    for (i in x){
        my_sum <- my_sum + i
        my_length <- my_length + 1
    }
    return(my_sum / my_length)
}
# 呼叫函數
my_mean(1:10)
mean(1:10)
