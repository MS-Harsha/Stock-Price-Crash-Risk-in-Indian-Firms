i <- 1
j <- 53
k <- 1
repeat {
  df <- data.frame(Rj_t_Nifty50_2017$Rjt[i:j])
  a <- sum(df[,1]^2, na.rm = TRUE)
  b <- sum(df[,1]^3, na.rm = TRUE)
  vec = is.na(df[,1])
  count = sum(vec)
  n <- 53-count
  dec1 <- (n-1)^1.5
  ans1 <- (dec1*n*b)*-1
  dec2 <- a^1.5
  ans2 <- (n-1)*(n-2)*dec2
  ans <- ans1/ans2
  crash_estimates_Nifty50_2017[k,3] <- ans
  k <- k+1
  if(k == 1609){
    break
  }
  i <- i + 53
  j <- j + 53
}