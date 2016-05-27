## Load the data in R

HPC_feb <- read.csv("E:/Kennis/Coursera/Data scientist/Exploratory Data Analysis/household_power_consumption_feb.txt", header=TRUE, sep="|",stringsAsFactors=FALSE, dec=".")


#Create plot
Plot2 <- 
  
plot(strptime(paste(HPC_feb$Date, HPC_feb$Time, sep=" "), "%d/%m/%Y %H:%M:%S"),as.numeric(HPC_feb$Global_active_power), type="l", xlab="",ylab="Global Active Power (kilowatts)" )


dev_copy(png,file="plot2.png") #create png
dev.off() #close the file


