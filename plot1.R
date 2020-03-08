setwd("C:/Users/dstripes/Downloads/exdata_data_household_power_consumption")
DF2 <- read.csv(file = "household_power_consumption.txt", header = TRUE, as.is = TRUE, sep = ";")
TDF2 = write.table(DF2,file = "household_power_consumption.csv",col.names=TRUE, row.names=FALSE, append=FALSE)DF2
DF2
HDF2 <- read.csv(file = "household_power_consumption.csv", header = TRUE, as.is = TRUE)
HDF2 <- subset(DF2, Date == "1/2/2007")
HDF3 <- sHDFMAIN <- rbind(HDF2,HDF3)ubset(DF2, Date == "2/2/2007")
HDFMAIN <- rbind(HDF2,HDF3)
HDFMAIN
write.table(HDFMAIN,file = "household_power_consumptionOnlyRequiredData.csv",col.names=TRUE, row.names=FALSE, append
Global_Active_Power = as.numeric(HDFMAIN$Global_active_power)
hist(Global_Active_Power,col = "red", main = "Global Active Power",      xlab = "Global Active Power (kilowatts)")
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()
