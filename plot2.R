#Load data
source(project1.R)

#Create the png file
png(filename = "plot2.png",width = 480, height = 480, units = "px")
plot(powerconsumptionnew$datetime, powerconsumptionnew$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()