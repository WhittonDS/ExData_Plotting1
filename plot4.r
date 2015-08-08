plot4 <- function(plotData) {
        par(mfrow=c(2,2))
        
        ##PLOT in top left
        plot(plotData$Time,plotData$Global_active_power, type="l", xlab="", ylab="Global Active Power")
        
        ##PLOT in top right
        plot(plotData$Time,plotData$Voltage, type="l", xlab="datetime", ylab="Voltage")
        
        ##PLOT in lower left
        plot(plotData$Time,plotData$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
        lines(plotData$Time,plotData$Sub_metering_2,col="red")
        lines(plotData$Time,plotData$Sub_metering_3,col="blue")
        legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), bty="n", cex=.5) #bty removes the box, cex shrinks the text, spacing added after labels so it renders correctly
        
        #PLOT in lower right
        plot(plotData$Time,plotData$Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power")
        
        #Save all the plots as on PNG file
        dev.copy(png, file="plot4.png", width=480, height=480)
        dev.off()
}