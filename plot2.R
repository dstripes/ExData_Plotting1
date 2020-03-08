setwd("C:/Users/dstripes/Downloads/exdata_data_household_power_consumption")
DFNeededDATA <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?",
 nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
 DFNeededDATA$Date <- as.Date(DFNeededDATA$Date, format="%d/%m/%Y")
 NeededDATA <- subset(DFNeededDATA, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
 rm(DFNeededDATA)
 datetime <- paste(as.Date(NeededDATA$Date), NeededDATA$Time)
 NeededDATA$Datetime <- as.POSIXct(datetime)
plot(NeededDATA$Global_active_power~NeededDATA$Datetime, type="l",
ylab="Global Active Power (kilowatts)", xlab="")
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()
