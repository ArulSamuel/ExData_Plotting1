setwd("/home/arul/Courses/DataScience/Course4_ExploratoryDataAnalysis/Assignments/P1")
getData <- function(){
  data <- read.table("../../Datasets/household_power_consumption.txt",nrows=10,header=TRUE,sep=";")
  classes <- sapply(data,class)
  #classes
  data <- read.table("../../Datasets/household_power_consumption.txt",header=TRUE,sep=";",colClasses=c("character", "character", rep("numeric",7)),na.strings="?")
  dataLogic <- data[,1]=="2/2/2007" | data[,1]=="1/2/2007"
  workingData <- data[dataLogic,]
  #write.table(workingData,file="temp.txt")
  
  workingData$Time <- strptime(paste(workingData$Date,workingData$Time),format="%d/%m/%Y %H:%M:%S")
  workingData$Date <- as.Date(workingData$Date,"%d/%m/%Y")
  return(workingData)
}

# PLOT 1
png(filename="plot1.png",width=480,height=480,units="px")
hist(workingData$Global_active_power,main="Global Active Power",col="red",xlab="Global Active Power (kilowatts)")
#dev.copy(png,"plot1.png")
dev.copy(jpeg,"plot1.jpeg")
dev.off()

# PLOT 2
levels(workingData[,1]) <- factor(workingData[,1])
levels(workingData[,2]) <- factor(workingData[,2])
with(workingData,plot(Time,Sub_metering_1))

dataN <- data.frame(as.POSIXlt(strptime(paste(workingData[,1],workingData[,2]),format("%d/%m/%Y %H:%M:%S"))),workingData[,3])
x<- c(1,2,5,6,7)
z12 <- paste(unlist(z1["mday"]),unlist(z1["hour"]),sep=":")
