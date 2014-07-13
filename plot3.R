meter.data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", dec = ".", na.string = "?")
##Define colors
plot.colors <- c("blue", "red", "black")
##Turn off axes and annotations so we can specify our own
plot(meter.data$Sub_metering_1, type = "l", col = plot.colors[1], axes = FALSE, ann = FALSE)
##Add days to x axis
axis(1, at = 1:3, lab = c("Thu", "Fri", "Sat"))
##Create a box around the plot
box()
##Graph meter2
lines(meter.data$Sub_metering_2, type = "l", pch = 22, lty = 2, col = plot.colors[2])
#Graph meter3
lines(meter.data$Sub_metering_3, type = "l", pch = 23, lty = 3, col = plot.colors[3])
##Create title
title(main = NULL)
##Label axes
title(xlab = NULL)
title(ylab = "Energy sub metering")
##Create a legend
legend(1, names(meter.data), cex = 0.8, col = plot.colors, pch = 21:23, lty = 1:3)