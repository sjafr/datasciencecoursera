plot2 <- function() {
        df_pwc$Global_reactive_power <- as.numeric(as.character(df_pwc$Global_reactive_power))
        df_pwc$Voltage <- as.numeric(as.character(df_pwc$Voltage))
        df_pwc <- transform(df_pwc, timestamp=as.POSIXct(paste(Date, Time)), "%d/%m/%Y %H:%M:%S")
        plot(df_pwc$timestamp,df_pwc$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
        dev.copy(png, file="plot2.png", width=480, height=480)
        dev.off()
        cat("plot2.png has been saved in", getwd())
}
plot2()