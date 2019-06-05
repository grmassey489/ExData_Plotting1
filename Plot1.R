AllData <- read.table("household_power_consumption.txt",sep=";")
names(AllData) <- c("Date","Time","Global_active_power","Voltage","Global_Intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
subsetp1 <- subset(AllData,AllData$Date=="1/2/2007" | AllData$Date == "2/2/2007")
GloActPower <- as.numeric(as.character(subsetp1$Global_active_power))

hist(GloActPower, col="red", main="Global Active Power", xlab = "Global Active Power (Kilowatts)")
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
