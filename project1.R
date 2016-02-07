#Unzip File
unzip(zipfile="C:/Users/Ramon/Desktop/Coursera/Data Sciences/Exploratory Data Analysis/WEEK 1/exdata-data-household_power_consumption.zip",exdir="C:/Users/Ramon/Desktop/Coursera/Data Sciences/Exploratory Data Analysis/WEEK 1/powerconsumption")

#Load packages
library(data.table)
library(lubridate)
library(chron)
library(dplyr)

#Define the column type
columnclass<-c(rep('character',2),rep('numeric',7))
# Read dataset in R
powerconsumption <- read.table("C:/Users/Ramon/Desktop/Coursera/Data Sciences/Exploratory Data Analysis/WEEK 1/powerconsumption/household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?",colClasses=columnclass)
powerconsumption <- tbl_df(powerconsumption)
#powerconsumption$Date <- as.Date(powerconsumption$Date, format='%d/%m/%Y')
# Create a subset of the original file with 2-days data
powerconsumptionnew <- filter(powerconsumption, Date == "1/2/2007"|Date == "2/2/2007")
dateTime <- paste(powerconsumptionnew$Date, powerconsumptionnew$Time, sep=' ')
dateTime1 <- strptime(dateTime, format="%Y/%m/%d:%H:%M:%S")


#powerconsumption$Date <- as.Date(powerconsumption$Date, format="%Y/%m/%d %H:%M:%S")




#Unzip File
unzip(zipfile="C:/Users/Ramon/Desktop/Coursera/Data Sciences/Exploratory Data Analysis/WEEK 1/exdata-data-household_power_consumption.zip",exdir="C:/Users/Ramon/Desktop/Coursera/Data Sciences/Exploratory Data Analysis/WEEK 1/powerconsumption")

#Load packages
library(data.table)
library(lubridate)
library(chron)
library(dplyr)

#Define the column type
columnclass<-c(rep('character',2),rep('numeric',7))
# Read dataset in R
powerconsumption <- read.table("C:/Users/Ramon/Desktop/Coursera/Data Sciences/Exploratory Data Analysis/WEEK 1/powerconsumption/household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?",colClasses=columnclass)
powerconsumption <- tbl_df(powerconsumption)
# Create a subset of the original file with 2-days data
powerconsumptionnew <- filter(powerconsumption, Date == "1/2/2007"|Date == "2/2/2007")

datetime <- as.POSIXlt(dmy(powerconsumptionnew$Date)+hms(powerconsumptionnew$Time))
powerconsumption$datetime <- datetime
