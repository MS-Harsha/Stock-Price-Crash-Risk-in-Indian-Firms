i <- 1
repeat {
  r <- i %% 53
  if(r == 1){
    i <- i + 1
  }
  d <- Variables_2017_Nifty50[i,4]/Variables_2017_Nifty50[i-1,4]
  dfinal <- log(d)
  Variables_2017_Nifty50[i,6] <- dfinal
  i <- i + 1
  if(i == 85225){
    break
  }
}
i <- 1
repeat {
  r <- i %% 53
  if(r == 1){
    i <- i + 1
  }
  d <- Variables_2017_Nifty50[i,5]/Variables_2017_Nifty50[i-1,5]
  dfinal <- log(d)
  Variables_2017_Nifty50[i,7] <- dfinal
  i <- i + 1
  if(i == 85225){
    break
  }
}
i <- 1
repeat {
  r <- i %% 53
  if(r == 1){
    i <- i + 1
  }
  r <- i %% 53
  if(r == 2){
    i <- i + 1
  }
  Variables_2017_Nifty50[i,8] <- Variables_2017_Nifty50[i-1,7]
  i <- i + 1
  if(i == 85225){
    break
  }
}
i <- 1
repeat {
  r <- i %% 53
  if(r == 0){
    i <- i + 1
  }
  Variables_2017_Nifty50[i,9] <- Variables_2017_Nifty50[i+1,7]
  i <- i + 1
  if(i == 85225){
    break
  }
}
