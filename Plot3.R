

## Load the data in R

HPC_feb <- read.csv("E:/Kennis/Coursera/Data scientist/Exploratory Data Analysis/household_power_consumption_feb.txt", header=TRUE, sep="|",stringsAsFactors=FALSE, dec=".")

png("E:/Kennis/Coursera/Data scientist/Exploratory Data Analysis/plot3.png", width=800, height=800)

#Create plot
PLot3 <- plot(strptime(paste(HPC_feb$Date, HPC_feb$Time, sep=" "), "%d/%m/%Y %H:%M:%S"),as.numeric(HPC_feb$Sub_metering_1), type="l", ylab="Energy Submetering", xlab="")
lines(strptime(paste(HPC_feb$Date, HPC_feb$Time, sep=" "), "%d/%m/%Y %H:%M:%S"), as.numeric(HPC_feb$Sub_metering_2), type="l", col="red")
lines(strptime(paste(HPC_feb$Date, HPC_feb$Time, sep=" "), "%d/%m/%Y %H:%M:%S"), as.numeric(HPC_feb$Sub_metering_3), type="l", col="blue")

dev.off() #close the file


