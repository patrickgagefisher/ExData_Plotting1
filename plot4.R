##Read data into R
table.data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", dec = ".", na.string = "?")
##Subset data by date
table.date <- table.data[with(table.data, Date == "1/2/2007" | Date == "2/2/2007"), ]

##Plot all four graphs
old.par <- par(mfrow=c(2, 2))

##Plot 1 Global Active Power
##Subset only the three columns we need
columns.Power <- c("Date", "Time", "Global_active_power")
table.subset.Power <- subset(table.date[columns.Power], )
##Plot graph
plot(table.subset.Power$Global_active_power, main = NULL, ylab = "Global Active Power (kilowatts)", type = "l", xaxt = 'n', ann = FALSE)
##Add x axis labels
table.axis.Power <- axis(1, at = c(1, nrow(table.subset.Power)/2, nrow(table.subset.Power)), labels = c("Thu", "Fri", "Sat"))
##Label y axis
title(ylab = "Global Active Power(kilowatts)")

##Plot 2 Voltage
##Subset only the three columns we need
columns.Voltage <- c("Date", "Time", "Voltage")
table.subset.Voltage <- subset(table.date[columns.Voltage], )
##Plot graph
plot(table.subset.Voltage$Voltage, main = NULL, ylab = "Voltage", xlab = "datetime", type = "l", xaxt = 'n', ann = FALSE)
##Add x axis labels
table.axis.Voltage <- axis(1, at = c(1, nrow(table.subset.Voltage)/2, nrow(table.subset.Voltage)), labels = c("Thu", "Fri", "Sat"))
##Label y axis
title(ylab = "Voltage")
##Label x axis
title(xlab = "datetime")

##Plot 3 Energy Sub Metering
columns.Energy <- c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3" )
table.subset.Energy <- subset(table.date[columns.Energy], )
##Define colors
plot.colors <- c("black", "red", "blue")
##Turn off axes and annotations so we can specify our own
plot(table.subset.Energy$Sub_metering_1, type = "l", lty = 1, col = plot.colors[1], xaxt = 'n', ann = FALSE)
##Add days to x axis
axis(1, at = seq(0, 2900, by = 1450), lab = c("Thu", "Fri", "Sat"))
##Create a box around the plot
box()
##Graph meter2
lines(table.subset.Energy$Sub_metering_2, type = "l", lty = 1, col = plot.colors[2])
#Graph meter3
lines(table.subset.Energy$Sub_metering_3, type = "l", lty = 1, col = plot.colors[3])
##Create title
title(main = NULL)
##Label axes
title(xlab = NULL)
title(ylab = "Energy sub metering")
##Create a legend
legend("topright", names(table.subset.Energy), cex = 0.8, col = plot.colors, lty = 1, box.lwd = par("lwd"))

##Plot 4 Global_reactive_power
##Subset only the three columns we need
columns.Reactive <- c("Date", "Time", "Global_reactive_power")
table.subset.Reactive <- subset(table.date[columns.Reactive], )
##Plot graph
plot(table.subset.Reactive$Global_reactive_power, main = NULL, ylab = "Global_reactive_power", xlab = "datetime", type = "l", xaxt = 'n', ann = FALSE)
##Add x axis labels
table.axis.Reactive <- axis(1, at = c(1, nrow(table.subset.Reactive)/2, nrow(table.subset.Reactive)), labels = c("Thu", "Fri", "Sat"))
##Label y axis
title(ylab = "Global_reactive_power")
##Label x axis
title(xlab = "datetime")