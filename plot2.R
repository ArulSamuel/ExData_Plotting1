source("data.R")

plot2 <- function(data=NULL){
  if(is.null(data)){
    data <- getData()
  }
  
  png(filename="plot2.png", width=480, height=480)
  plot(workingData$Time,workingData$Global_active_power,type="l",
       xlab="",ylab="Global Active Power (kilowatts)")
  
  dev.off()
  
  
}
plot2(data=NULL)