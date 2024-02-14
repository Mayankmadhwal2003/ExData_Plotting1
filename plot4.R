png(file = "plot4.png",width = 480, height = 480)

par(mfrow = c(2,2))


plot(date_time, household_data$Global_active_power, type = "l", ylab = "Global Active Power(kilowatts)", xlab = "")


plot(date_time, household_data$Voltage, type = "l", ylab = "Voltage", xlab = "datetime")

plot(date_time, household_data$Sub_metering_1, type = "n", ylab = "Energy Sub Metering", xlab = "")
lines(date_time, household_data$Sub_metering_1, col = "black")
lines(date_time, household_data$Sub_metering_2, col = "red")
lines(date_time, household_data$Sub_metering_3, col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"), bty = "n")

plot(date_time, household_data$Global_reactive_power, type = "l", ylab = "Global_reactive_power", xlab = "datetime")

dev.off()
