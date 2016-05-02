plot3 <- function() {
        df_pwc$Sub_metering_1 <- as.numeric(as.character(df_pwc$Sub_metering_1))
        df_pwc$Sub_metering_2 <- as.numeric(as.character(df_pwc$Sub_metering_2))
        df_pwc$Sub_metering_3 <- as.numeric(as.character(df_pwc$Sub_metering_3))

        plot(df_pwc$timestamp,df_pwc$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")

        lines(df_pwc$timestamp,df_pwc$Sub_metering_2,col="red")

        lines(df_pwc$timestamp,df_pwc$Sub_metering_3,col="blue")

        legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), lwd=c(1,1), cex=.4,
adj=c(0,1))

        dev.copy(png, file="plot3.png", width=480, height=480)
        dev.off()
        cat("plot3.png has been saved in", getwd())
}
plot3()
