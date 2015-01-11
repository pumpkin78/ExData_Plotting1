data = read.table("household_power_consumption.txt", header = FALSE, skip = 66637, sep = ";", nrows = (69517-66638+1), stringsAsFactors = FALSE)
colnames(data) = c("Date", "Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

png("plot1.png", width = 480, height = 480)
hist(data$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()