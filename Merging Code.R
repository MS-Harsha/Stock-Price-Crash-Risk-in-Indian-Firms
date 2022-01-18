i <- 1
repeat {
  r1 <- i %% 53
  if(r1 == 0){
    r1 <- 53
  }
  wclpr_2017[i,5] <- wclpr_2017[r1,5]
  wclpr_2017[i,6] <- wclpr_2017[r1,6]
  wclpr_2017[i,7] <- wclpr_2017[r1,7]
  wclpr_2017[i,8] <- wclpr_2017[r1,8]
  i <- i+1
  if(i == 85225){
    break
  }
}