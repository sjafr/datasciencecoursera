plot4 <- function() {
        par(mfrow=c(2,2))

##PLOT 1
        plot(df_pwc$timestamp,df_pwc$Global_active_power, type="l", xlab="", ylab="Global Active Power")

##PLOT 2
        plot(df_pwc$timestamp,df_pwc$Voltage, type="l", xlab="datetime", ylab="Voltage")

##PLOT 3
        plot(df_pwc$timestamp,df_pwc$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
        lines(df_pwc$timestamp,df_pwc$Sub_metering_2,col="red")
        lines(df_pwc$timestamp,df_pwc$Sub_metering_3,col="blue")
        legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), lwd=c(1,1), cex=.4, , adj=c(0,1))

#PLOT 4
        yxs <- seq(from = 0, to = 0.5, by = 0.1)
        plot(df_pwc$timestamp,df_pwc$Global_reactive_power, type="l",xlab="datetime", ylab="Global_reactive_power", yaxt = "n")
        axis(side = 2, at = yxs, las = 0.5, cex.axis = 0.5)

#OUTPUT
        dev.copy(png, file="plot4.png", width=480, height=480)
        dev.off()
        cat("plot4.png has been saved in", getwd())
}
plot4()