y <- Variables_2017_Nifty50$rjt
x1 <- Variables_2017_Nifty50$rmt
x2 <- Variables_2017_Nifty50$rmt.1
x3 <- Variables_2017_Nifty50$rmt.1.1
i <- 1
j <- 1
repeat {
  start <- i
  last <- i+52
  x1star <- x1[start:last]
  x2star <- x2[start:last]
  x3star <- x3[start:last]
  ystar <- y[start:last]
  i <- i + 53
  df <- data.frame(x1star,x2star,x3star,ystar)
  regr <- lm(ystar~x1star+x2star+x3star,data = df,na.action = na.omit)
  values <- coefficients(regr)
  OLS_NIFTY50_2017[j,3] <- values[1]
  OLS_NIFTY50_2017[j,4] <- values[2]
  OLS_NIFTY50_2017[j,5] <- values[3]
  OLS_NIFTY50_2017[j,6] <- values[4]
  rse <- summary(regr)$sigma
  OLS_NIFTY50_2017[j,7] <- rse
  j <- j+1
  if(j == 1609){
    break
  }
} 