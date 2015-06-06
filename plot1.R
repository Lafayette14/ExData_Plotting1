
data <- read.table("household_power_consumption.txt", header=TRUE, sep=";")
subSetData <- data[data$Date %in% c("1/2/2007", "2/2/2007") ,]

globalact <- subSetData$Global_active_power 
globalact<-as.numeric(globalact)
png("plot1.png", width = 480, height = 480)
hist(globalact, freq=TRUE, col="red", main="Global Active Power", xlab= "Global Active Power(kilowatts)", ylab = "Frequency")

dev.off()