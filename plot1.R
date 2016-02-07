#Load data
source(project1.R)

#Create the png file
png(filename = "plot1.png",width = 480, height = 480, units = "px")
hist(powerconsumptionnew$Global_active_power, xlab = "Global Active Power (kilowatts)", ylab = "Frequency", main= "Global Active Power", col = "red")
dev.off()
