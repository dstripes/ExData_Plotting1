setwd("C:/Users/dstripes/Downloads/exdata_data_household_power_consumption")
HDFMAIN <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?",                    
=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
HDFMAIN$Date <- as.Date(HDFMAIN$Date, format="%d/%m/%Y")
NeededDATA <- subset(HDFMAIN, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
rm(HDFMAIN)
datetime <- paste(as.Date(NeededDATA$Date), NeededDATA$Time)
NeededDATA$Datetime <- as.POSIXct(datetime)
par(mfrow=c(2,2),mar=c(4,4,2,1), oma=c(0,0,2,0))
plot(NeededDATA$Global_active_power~NeededDATA$Datetime, type="l",     
    ylab="Global Active Power (kilowatts)", xlab="")
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
plot(NeededDATA$Voltage~NeededDATA$Datetime, type="l",     
    ylab="Voltage", xlab="DateTime")
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()
with(NeededDATA, {
plot(Sub_metering_1~Datetime, type="l",
ylab="Global Active Power (kilowatts)", xlab="")
lines(Sub_metering_2~Datetime,col='Red')
lines(Sub_metering_3~Datetime,col='Blue')
})
legend("topright", col=c("black", "red", "blue"), lty=1, lwd=2,bty = "n",       
    legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex = 0.25)
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()
plot(NeededDATA$Global_reactive_power~NeededDATA$Datetime, type="l",     
    ylab="Global Reactive Power", xlab="DateTime")
dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()
