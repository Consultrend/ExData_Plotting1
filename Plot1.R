## Load the data in R
## Only the neceassary data is loaded into R.
HPC_feb <- read.csv("E:/Kennis/Coursera/Data scientist/Exploratory Data Analysis/household_power_consumption_feb.txt", header=TRUE, sep="|")

png("E:/Kennis/Coursera/Data scientist/Exploratory Data Analysis/plot1.png", width=800, height=800)

#Create plot
hist(HPC_feb$Global_active_power, col="red", main = ("Global Active Power"), xlab="Global active Power(kilowatts", ylab="frequency")

dev.off() #close the file
