setwd("C:/Users/dstripes/Downloads/exdata_data_household_power_consumption")
HDFMAIN <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?",
 nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
 HDFMAIN$Date <- as.Date(HDFMAIN$Date, format="%d/%m/%Y")
 NeededDATA <- subset(HDFMAIN, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
 rm(HDFMAIN)
 datetime <- paste(as.Date(NeededDATA$Date), NeededDATA$Time)NeededDATA$Datetime <- as.POSIXct(datetime)
 NeededDATA$Datetime <- as.POSIXct(datetime)
 with(NeededDATA, {
 plot(Sub_metering_1~Datetime, type="l",
 ylab="Global Active Power (kilowatts)", xlab="")
 lines(Sub_metering_2~Datetime,col='Red')
 lines(Sub_metering_3~Datetime,col='Blue')
 })
 legend("topright",col=c("black", "red", "blue"), lty=1, lwd=2,      
 legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),cex = 0.5)
 dev.copy(png, file="plot3.png", height=480, width=480)
 dev.off()
