setwd("C:/Users/user/Documents/Data Science/Exploratory Data Analysis")

data <- read.table("household_power_consumption.txt", stringsAsFactors = FALSE, header=TRUE, sep=';')

data2 <- subset(data, Date=="1/2/2007" | Date=="2/2/2007")

date <- strptime(paste(data2$Date, data2$Time), "%d/%m/%Y %H:%M:%S")

png(file="plot2.png")
plot(date, as.numeric(data2$Global_active_power), type="l", xlab="",
ylab="Global Active Power (kilowatts)")
dev.off()