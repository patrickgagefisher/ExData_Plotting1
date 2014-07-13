##Read the table into R
table.set <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", dec = ".", na.string = "?")
##Subset only the three columns we need
table.columns <- subset(table.set[1:3], )
##Specify the date range
table.subset <- table.columns[with(table.columns, Date == "1/2/2007" | Date == "2/2/2007"), ]
##Create the histogram
table.hist <- with(table.subset, hist(Global_active_power, type = "Integer", main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red"))
table.hist