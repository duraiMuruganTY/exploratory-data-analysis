# 4th Image

# Open PNG device

png("plot4.png", width=480, height=480)

# create facet 2X2
par(mfrow = c(2, 2)) 

#1st graph - time vs global active power
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power", cex=0.2)

#2nd graph - time vs voltage
plot(datetime, voltage, type="l", xlab="datetime", ylab="Voltage")

#3rd graph - time vs sub metering
plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=, lwd=2.5, col=c("black", "red", "blue"), bty="o")

#4th graph - time vs global reaction power
plot(datetime, globalReactivePower, type="l", xlab="datetime", ylab="Global_reactive_power")

dev.off()