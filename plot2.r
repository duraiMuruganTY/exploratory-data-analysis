# transforming date and time variable in DS

# Save as PNG file with width and height as 480 pixel
png("plot2.png", width=480, height=480)

plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")

dev.off()