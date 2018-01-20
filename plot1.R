rm(list=ls())

setwd("C:/Users/Julio/Desktop/Maestría Energía 2017/Coursera/Data Science Specialization JH/Curso 4 - Exploratory Data Analysis/W1/Assignment 1")

data <- read.table("household_power_consumption.txt",sep=";",header = TRUE,na.strings = "?")

data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

df <- data[data$Date == "2007-02-01" | data$Date == "2007-02-02",]

df$Time <- strptime(paste(df$Date,df$Time),format = "%Y-%m-%d %H:%M:%S")

#Plot 1

png(filen = "plot1.png", width=480, height=480)

hist(df$Global_active_power, col ="red", main = "Global Active Power",xlab="Global Active Power (kilowatts)")

dev.off()