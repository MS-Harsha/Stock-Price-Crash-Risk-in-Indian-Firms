i <- 1
k <- 1
x <- NROW(Rj_t_Nifty50_2017)
x <- x+1
while(i < x) {
j <- i + 52
df <- data.frame(Rj_t_Nifty50_2017$Rjt[i:j])
avg <- mean(df[,1],na.rm = TRUE)
sd <- sd(df[,1],na.rm = TRUE)
cmp1 <- avg + 3.09*sd
cmp2 <- avg - 3.09*sd
fu <- 0
fd <- 0
rep <- 53
while(rep > 0){
if(is.na(df[rep,1]) == TRUE){
}
else if(df[rep,1] >= cmp1){
 fu <- fu + 1 
}
else if(df[rep,1] <= cmp2){
  fd <- fd + 1
}
rep <- rep - 1
}
crash_estimates_Nifty50_2017[k,5] <- fd-fu
i <- i + 53
k <- k + 1
}
write.csv(crash_estimates_Nifty50_2017,file = "C:\\Users\\GANTA SRUJAN REDDY\\Desktop\\Crash_Estimates_Nifty50_2017.csv",row.names = F)

  
  