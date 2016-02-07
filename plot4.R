#Load data
source(project1.R)

#Create the png file
png(filename = "plot4.png",width = 480, height = 480, units = "px")

#Create 4 plots
par(mfrow=c(2,2))

# plot on top left (1,1)
plot(powerconsumptionnew$datetime,powerconsumptionnew$Global_active_power,ylab='Global Active Power',xlab='',type='l')

# plot on top right (1,2)
plot(powerconsumptionnew$datetime,powerconsumptionnew$Voltage,xlab='datetime',ylab='Voltage',type='l')

#Plot on bottom left(2,1)
plot(powerconsumptionnew$datetime, powerconsumptionnew$Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering")
	lines(powerconsumptionnew$datetime, powerconsumptionnew$Sub_metering_2, type="l", col="red")
	lines(powerconsumptionnew$datetime, powerconsumptionnew$Sub_metering_3, type="l", col="blue")
	legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lwd=2, col=c("black", "red", "blue"))


#plot on bottom right (2,2)
plot(powerconsumptionnew$datetime,powerconsumptionnew$Global_reactive_power,xlab='datetime',ylab='Global_reactive_power',type='l')
dev.off()