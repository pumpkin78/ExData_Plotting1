colnames(data) = c("Date", "Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
time = strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")

png("plot4.png", width = 480, height = 480)
par(mfrow = c(2, 2))
plot(time, data$Global_active_power, ylab = "Global Active Power", type = "l", xlab = "")
plot(time, data$Voltage, ylab = "Voltage", type = "l", xlab = "datetime")

plot(time, data$Sub_metering_1 , ylab = "Energy sub metering", type = "l", xlab = "")
lines(time, data$Sub_metering_2 ,col = "red")
lines(time, data$Sub_metering_3 , col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c("black", "red", "blue"), seg.len = c(1, 1, 1), lty = c(1, 1, 1))

plot(time, data$Global_reactive_power, ylab = "Global_reactive_power", type = "l", xlab = "datetime")
dev.off()