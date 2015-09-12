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
plotFile <- "plot2.png"
png(plotFile, width = 480, height = 480)
par(bg="transparent")
plot(hpcData$Time, hpcData$Global_active_power, ylab = "Global Active Power (kilowatts)", xlab = "", type = "l")
dev.off()
printf("%s created", plotFile)
