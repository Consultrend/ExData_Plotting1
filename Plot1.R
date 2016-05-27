## Load the data in R

HPC_feb <- read.csv("E:/Kennis/Coursera/Data scientist/Exploratory Data Analysis/household_power_consumption_feb.txt", header=TRUE, sep="|")

library(datasets)
?hist

#Create plot
hist(HPC_feb$Global_active_power, col="red", main = ("Global Active Power"), xlab="Global active Power(kilowatts", ylab="frequency")
dev.copy(png,file="plot1.png") #create png
dev.off() #close the file