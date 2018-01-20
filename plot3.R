rm(list=ls())

setwd("C:/Users/Julio/Desktop/Maestría Energía 2017/Coursera/Data Science Specialization JH/Curso 4 - Exploratory Data Analysis/W1/Assignment 1")

data <- read.table("household_power_consumption.txt",sep=";",header = TRUE,na.strings = "?")

data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

df <- data[data$Date == "2007-02-01" | data$Date == "2007-02-02",]

df$Time <- strptime(paste(df$Date,df$Time),format = "%Y-%m-%d %H:%M:%S")

#Plot 3

png(filen = "plot3.png", width=480, height=480)

plot(df$Time,df$Sub_metering_1 ,type = "l",ylab="Energy sub metering",xlab="")
lines(df$Time,df$Sub_metering_2,col="red")
lines(df$Time,df$Sub_metering_3,col="blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"),cex=0.9)

dev.off()
