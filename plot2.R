png(filename = "plot2.png",height = 480,width=480)
with(power,plot(DateTime,Global_active_power, type="n",ylab = "Global Active Power (kilowatts)"))
with(power,lines(DateTime,Global_active_power))
dev.off()
