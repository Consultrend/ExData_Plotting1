## Load the data in R

HPC_feb <- read.csv("E:/Kennis/Coursera/Data scientist/Exploratory Data Analysis/household_power_consumption_feb.txt", header=TRUE, sep="|")


par(mfrow = c(2, 2)) 

png("E:/Kennis/Coursera/Data scientist/Exploratory Data Analysis/plot4.png", width=800, height=800)
#left Above
plot(strptime(paste(HPC_feb$Date, HPC_feb$Time, sep=" "), "%d/%m/%Y %H:%M:%S"), as.numeric(HPC_feb$Global_active_power), type="l", xlab="", ylab="Global Active Power", cex=0.2)
#Right above
plot(strptime(paste(HPC_feb$Date, HPC_feb$Time, sep=" "), "%d/%m/%Y %H:%M:%S"), as.numeric(HPC_feb$Voltage), type="l", xlab="datetime", ylab="Voltage")
    #left below
plot(strptime(paste(HPC_feb$Date, HPC_feb$Time, sep=" "), "%d/%m/%Y %H:%M:%S"),as.numeric(HPC_feb$Sub_metering_1), type="l", ylab="Energy Submetering", xlab="")
lines(strptime(paste(HPC_feb$Date, HPC_feb$Time, sep=" "), "%d/%m/%Y %H:%M:%S"), as.numeric(HPC_feb$Sub_metering_2), type="l", col="red")
lines(strptime(paste(HPC_feb$Date, HPC_feb$Time, sep=" "), "%d/%m/%Y %H:%M:%S"), as.numeric(HPC_feb$Sub_metering_3), type="l", col="blue")
#Right below
plot(strptime(paste(HPC_feb$Date, HPC_feb$Time, sep=" "), "%d/%m/%Y %H:%M:%S"), as.numeric(HPC_feb$Global_reactive_power), type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()
