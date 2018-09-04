# Reading Data from the txt file
householdPower <- read.table("household_power_consumption.txt",skip=1,sep=";")

#naming Data
names(householdPower) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

data <- subset(householdPower,householdPower$Date=="1/2/2007" | householdPower$Date =="2/2/2007")


# modifying DS data fields

# striping time fileds - used in plot 2,3 and 4

datetime <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(data$Global_active_power)

# sub metering used in plot 3 and 4 

subMetering1 <- as.numeric(data$Sub_metering_1)
subMetering2 <- as.numeric(data$Sub_metering_2)
subMetering3 <- as.numeric(data$Sub_metering_3)

# fields used in plot 4
globalReactivePower <- as.numeric(data$Global_reactive_power)
voltage <- as.numeric(data$Voltage)
