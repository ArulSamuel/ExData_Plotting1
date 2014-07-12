source("data.R")

plot1 <- function(data=NULL){
  if(is.null(data)){
    data <- getData()
  }
  
  png(filename="plot1.png", width=480, height=480)
  hist(workingData$Global_active_power,col="red",main="Global Active Power",
       xlab="Global Active Power (kilowatts)")
  
  dev.off()
  
  
}
plot1(data=NULL)