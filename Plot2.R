## Load the data in R
## Only the neceassary data is loaded into R.

HPC_feb <- read.csv("E:/Kennis/Coursera/Data scientist/Exploratory Data Analysis/household_power_consumption_feb.txt", header=TRUE, sep="|",stringsAsFactors=FALSE, dec=".")


#Create plot
png("E:/Kennis/Coursera/Data scientist/Exploratory Data Analysis/plot2.png", width=800, height=800)
  
plot(strptime(paste(HPC_feb$Date, HPC_feb$Time, sep=" "), "%d/%m/%Y %H:%M:%S"),as.numeric(HPC_feb$Global_active_power), type="l", xlab="",ylab="Global Active Power (kilowatts)" )

dev.off() #close the file


