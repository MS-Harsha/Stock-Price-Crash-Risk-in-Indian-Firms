i <- 1
j <- 1
repeat {
  Rj_t_NIFTY50_2017[i,5] <- OLS_NIFTY50_2017_copy_[j,3] + OLS_NIFTY50_2017_copy_[j,4]*Variables_2017_Nifty50[i,7] + OLS_NIFTY50_2017_copy_[j,5]*Variables_2017_Nifty50[i,8] + OLS_NIFTY50_2017_copy_[j,6]*Variables_2017_Nifty50[i,9]
  r <- i %% 53
  if(r == 0) {
    j <- j+1
  }
  i <- i+1
  if(i == 85225){
    break
  }
}