##Read the table into R
table.set <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", dec = ".", na.string = "?")
##Specify the date range
table.date <- table.set[with(table.set, Date == "1/2/2007" | Date == "2/2/2007"), ]
##Subset only the three columns we need
table.subset <- subset(table.date[1:3], )
##Plot graph
plot(table.subset$Global_active_power, main = NULL, ylab = "Global Active Power (kilowatts)", type = "l", xaxt = 'n', ann = FALSE)
##Add x axis labels
table.axis <- axis(1, at = c(1, nrow(table.subset)/2, nrow(table.subset)), labels = c("Thu", "Fri", "Sat"))
##Label y axis
title(ylab = "Global Active Power(kilowatts)")