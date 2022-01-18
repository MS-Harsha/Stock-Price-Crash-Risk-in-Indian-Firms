i <- 1
k <- 1
while(i < 85225){
  j <- i+52
  df <- data.frame(Rj_t_Nifty50_2017$Rjt[i:j])
  cmp <- mean(df[,1],na.rm  = TRUE)
  vec <- is.na(df[,1])
  count <- sum(vec)
  n <- 53-count
  rep <- 53
  u <- 1
  d <- 1
  df1 <- data.frame(up = c(""))
  df2 <- data.frame(down = c(""))
  df1 <- transform(df1,up = is.numeric(up))
  df2 <- transform(df2,down = is.numeric(down))
  while(rep > 0) {
    if(is.na(df[rep,1]) == TRUE) {
      df1[u,1] <- df[rep,1]
      u <- u+1
    }
    else if(df[rep,1] >= cmp){
      df1[u,1] <- df[rep,1]
      u <- u+1
    }
    else if(df[rep,1] < cmp){
      df2[d,1] <- df[rep,1]
      d <- d+1
    }
    rep <- rep-1
  }
  vecu <- is.na(df1[,1])
  countu <- sum(vecu)
  nu <- u-1-countu
  vecd <- is.na(df2[,1])
  countd <- sum(vecd)
  nd <- d-1-countd
  m1 <- (nu-1)/(nd-1)
  squ <- sum(df1[,1]^2,na.rm = TRUE)
  sqd <- sum(df2[,1]^2,na.rm = TRUE)
  m2 <- sqd/squ
  ans <- m1*m2
  DUVOL <- log(ans)
  crash_estimates_Nifty50_2017[k,4] <- DUVOL
  i <- i + 53
  k <- k + 1
}
  