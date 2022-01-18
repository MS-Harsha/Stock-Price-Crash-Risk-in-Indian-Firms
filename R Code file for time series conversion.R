i <- 1
j <- 2
df <- data.frame(file17)
df <- df[,!is.na(df[1,])]
m <- ncol(df)
m <- m-1
m
act <- nrow(df)
act <- act - 2
m <- m * act
m <- m+1
m
repeat {
  NSE_2017[i,1] <- df[1,j]
  NSE_2017[i,2] <- df[2,j]
  r1 <- i %% act
  if(r1 == 0){
    j <- j+1
  }
  i <- i + 1
  if(i == m){
    break
  }
}
i <- 1
repeat {
  r1 <- i %% act
  if(r1 == 0){
    r1 <- act
  }
  NSE_2017[i,3] <- NSE_2017[r1,3]
  i <- i+1
  if(i == m){
    break
  }
}
i <- 1
j <- 2
repeat {
  r1 <- i %% act
  if(r1 == 0){
    r1 <- act
  }
  NSE_2017[i,4] <- df[r1+2,j]
  r1 <- i %% act
  if(r1 == 0){
    j <- j+1
  }
  i <- i + 1
  if(i == m){
    break
  }
}
NSE_2017 <- NSE_2017[complete.cases(NSE_2017[1]),]
write.csv(NSE_2017,file = "C:\\Users\\GANTA SRUJAN REDDY\\Desktop\\NSE_2017.csv",row.names = FALSE)



