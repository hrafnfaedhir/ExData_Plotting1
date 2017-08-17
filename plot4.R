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
