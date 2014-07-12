source("data.R")

plot3 <- function(data=NULL){
  if(is.null(data)){
    data <- getData()
  }
  
  png(filename="plot3.png", width=480, height=480)
  
  plot(workingData$Time,workingData$Sub_metering_1,col="black",type = "n",
       xlab="",ylab="Energy sub metering")
  points(workingData$Time,workingData$Sub_metering_1,col="black",type="l")
  points(workingData$Time,workingData$Sub_metering_2,col="red",type="l")
  points(workingData$Time,workingData$Sub_metering_3,col="blue",type="l")
  legend("topright",lty=1,col=c("black","red","blue"),
         legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  
  dev.off()
  
  
}
plot3(data=NULL)