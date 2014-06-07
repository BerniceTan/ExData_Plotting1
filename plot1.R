setwd("C:/Users/user/Documents/Data Science/Exploratory Data Analysis")

data <- read.table("household_power_consumption.txt", stringsAsFactors = FALSE, header=TRUE, sep=';')

data2 <- subset(data, Date=="1/2/2007" | Date=="2/2/2007")

png(file="plot1.png")
with(data2, hist(as.numeric(Global_active_power), col='Red',
main=paste("Global Active Power"), xlab="Global Active Power (kilowatts)",
ylab= "Frequency"))

dev.off()
