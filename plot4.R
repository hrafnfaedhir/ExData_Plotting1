power0 <- read.table("household_power_consumption.txt", header = TRUE,sep=";",na.strings = "?")
power0$DT <- paste(power0$Date,power0$Time,sep=" ")
power0$DateTime <- strptime(power0$DT,"%d/%m/%Y %H:%M:%S")
date1 <- as.POSIXlt("2007-02-01 00:00:00")
date2 <- as.POSIXlt("2007-02-02 24:00:00")
power <- power0[(power0$DateTime>=date1)&(power0$DateTime<=date2),]
png(filename = "plot4.png",height = 480,width=480)
par(mfrow=c(2,2))
#plot1
with(power,plot(DateTime,Global_active_power, type="n",ylab = "Global Active Power (kilowatts)"))
with(power,lines(DateTime,Global_active_power))
#plot2
with(power,plot(DateTime,Voltage, type="n"))
with(power,lines(DateTime,Voltage,ylab = "Voltage"))
#plot3
with(power,plot(DateTime,Sub_metering_1, ylab = "Energy sub metering",type="n"))
with(power,lines(DateTime,Sub_metering_1))
with(power,lines(DateTime,Sub_metering_2,col="red"))
with(power,lines(DateTime,Sub_metering_3,col="blue"))
legend("topright",lwd = c(1,1,1), col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
#plot4
with(power,plot(DateTime,Global_reactive_power, type="n"))
with(power,lines(DateTime,Global_reactive_power))
dev.off()
