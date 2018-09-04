# First Plot - Frequency of GLobal Active Power

# Save as PNG file with width and height as 480 pixel
png("plot1.png", width=480, height=480)

#Plotting using Base Plot functions - Histogram
hist(as.numeric(as.character(data$Global_active_power)),col="red",main="",xlab="")

# annotating graph
title(main="Global Active Power", xlab="Global Active Power(kilowatts)")

dev.off()