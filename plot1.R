#read subset data 1/2/2007 - 2/2/2007
  data <- read.table(file="household_power_consumption.txt", sep=";", skip=grep("31/1/2007;23:59:00", readLines("household_power_consumption.txt")), nrows=2880)
  names(data) <- c("Date", "Time", "Global_active_power", "Global_reactive_power","Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")

#launch png file device
  png(file="plot1.png")

#plot histogram
  hist(data$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", main="Global Active Power")

#close the PNG file device
  dev.off()