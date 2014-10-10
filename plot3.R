meter.data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", dec = ".", na.string = "?")
##Subset data
meter.date <- meter.data[with(meter.data, Date == "1/2/2007" | Date == "2/2/2007"), ]
meter.subset <- subset(meter.date[7:9], )
##Define colors
plot.colors <- c("black", "red", "blue")
##Turn off axes and annotations so we can specify our own
plot(meter.subset$Sub_metering_1, type = "l", lty = 1, col = plot.colors[1], xaxt = 'n', ann = FALSE)
##Add days to x axis
axis(1, at = seq(0, 2900, by = 1450), lab = c("Thu", "Fri", "Sat"))
##Create a box around the plot
box()
##Graph meter2
lines(meter.subset$Sub_metering_2, type = "l", lty = 1, col = plot.colors[2])
#Graph meter3
lines(meter.subset$Sub_metering_3, type = "l", lty = 1, col = plot.colors[3])
##Create title
title(main = NULL)
##Label axes
title(xlab = NULL)
title(ylab = "Energy sub metering")
##Create a legend
legend("topright", names(meter.subset), cex = 0.8, col = plot.colors, lty = 1, box.lwd = par("lwd"))