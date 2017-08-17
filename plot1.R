power0 <- read.table("household_power_consumption.txt", header = TRUE,sep=";",na.strings = "?")
power0$DT <- paste(power0$Date,power0$Time,sep=" ")
power0$DateTime <- strptime(power0$DT,"%d/%m/%Y %H:%M:%S")
date1 <- as.POSIXlt("2007-02-01 00:00:00")
date2 <- as.POSIXlt("2007-02-02 24:00:00")
power <- power0[(power0$DateTime>=date1)&(power0$DateTime<=date2),]
png(filename = "plot1.png",height = 480,width=480)
hist(power$Global_active_power,xlab="Global Active Power (kilowatts)",col="red", main="Global Active Power")
dev.off()
