##Read the table into R
table.set <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", dec = ".", na.string = "?")
##Subset only the three columns we need
table.columns <- subset(table.set[1:3], )
##Specify the date range
table.subset <- table.columns[with(table.columns, Date == "1/2/2007" | Date == "2/2/2007"), ]
##Add x axis labels
table.axis <- axis(1, at = c(1, nrow(table.subset)/2, nrow(table.subset)), labels = c("Thu", "Fri", "Sat"))
##Create the graph
table.graph <- with(table.axis, plot(Date, Global_active_power, main = NULL, ylab = "Global Active Power (kilowatts)", type = "l"))
table.graph