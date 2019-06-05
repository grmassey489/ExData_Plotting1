AllData <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
subset2 <- subset(AllData, Date %in% c("1/2/2007","2/2/2007"))
subset2$Date <- as.Date(subset2$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(subset2$Date), subset2$Time)
subset2$Datetime <- as.POSIXct(datetime)

with(subset2, {
  plot(Global_active_power~Datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
})
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()