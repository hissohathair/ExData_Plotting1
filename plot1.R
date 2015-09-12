# Exploratory Data Analysis -- Week 1 Peer Assessment
#

# Some helper functions. Also sets current working directory.
#setwd("~/Dropbox (Personal)/Study/Data Science/ExData_Plotting1")
source("helpers.R")

# Acquire the data, and read it into a BFDF
if ( !exists("hpcData")) {
    dataFile <- fetchData("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", 
                          "./data", "household_power_consumption")
    hpcData <- loadData(dataFile)
}

# Plot
plotFile <- "plot1.png"
png(plotFile, width = 480, height = 480)
par(bg="transparent")
hist(hpcData$Global_active_power, col = "red", main = "Global Active Power", ylab = "Frequency", xlab = "Global Active Power (kilowatts)")
dev.off()
printf("%s created", plotFile)
