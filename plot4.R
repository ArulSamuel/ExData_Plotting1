source("data.R")

plot4 <- function(data=NULL){
  if(is.null(data)){
    data <- getData()
  }
  
  png(filename="plot4.png", width=480, height=480)
  par(mfrow=c(2,2))
  par(mar=c(4,4,1,1))
  plot(workingData$Time,workingData$Global_active_power,type="l",
       xlab="",ylab="Global Active Power")
  
  plot(workingData$Time,workingData$Voltage,type="l",
       xlab="datetime",ylab="Voltage")
  
  plot(workingData$Time,workingData$Sub_metering_1,col="black",type = "n",xlab="",ylab="Energy sub metering")
  points(workingData$Time,workingData$Sub_metering_1,col="black",type="l")
  points(workingData$Time,workingData$Sub_metering_2,col="red",type="l")
  points(workingData$Time,workingData$Sub_metering_3,col="blue",type="l")
  legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
  
  with(workingData,plot(Time,Global_reactive_power,type="l",xlab="datetime",ylab="Global_reactive_power"))
  
  dev.off()
  
  
}
plot4(data=NULL)