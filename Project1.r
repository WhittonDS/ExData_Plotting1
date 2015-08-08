plotit <- function(){
        
        #install.packages("dplyr")
        library(dplyr)
        
        directory = "C://Users//jwhitt01//Documents//jjW//Coursera//04 Exploratory Data Analysis"
        setwd(directory)
        
        # Set the Working Directory if it isn't set correctly already
        if (getwd() != directory){
                setwd(directory)
        }

        fileName="household_power_consumption.txt"
        fileTXT <- paste(directory , "//" ,  fileName, sep="")
        allData <- read.table(fileTXT, header = TRUE, sep=";", , na="?", colClasses=c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric"))
        
        # Get only the dates needed for assignment
        allData$Time <- strptime(paste(allData$Date, allData$Time), "%d/%m/%Y %H:%M:%S")
        allData$Date <- as.Date(allData$Date, "%d/%m/%Y")
        plotData <- allData[(allData$Date=="2007-02-01") | (allData$Date=="2007-02-02"),]
        
        source('plot1.r')
        plot1(plotData)
        
        source('plot2.r')
        plot2(plotData)
        
        source('plot3.r')
        plot3(plotData)
        
        source('plot4.r')
        plot4(plotData)
        
        
}