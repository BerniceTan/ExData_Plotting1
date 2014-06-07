setwd("C:/Users/user/Documents/Data Science/Exploratory Data Analysis")

data <- read.table("household_power_consumption.txt", stringsAsFactors = FALSE, header=TRUE, sep=';')

data2 <- subset(data, Date=="1/2/2007" | Date=="2/2/2007")

date <- strptime(paste(data2$Date, data2$Time), "%d/%m/%Y %H:%M:%S")


png(file="plot3.png")
with(data2, plot(date, as.numeric(Sub_metering_1), type="l", xlab="", ylab="Energy sub metering"))
with(data2, points(date, as.numeric(Sub_metering_2), type="l", col="Red"))
with(data2, points(date, as.numeric(Sub_metering_3), type="l", col="Blue"))
legend("topright", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1)
dev.off()