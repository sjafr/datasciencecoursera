plot1 <- function() {
        pwc <- read.table("household_power_consumption.txt", header=TRUE, sep=";")
        pwc$Date <- as.Date(pwc$Date, format="%d/%m/%Y")
        df_pwc <- pwc[(pwc$Date=="2007-02-01") | (pwc$Date=="2007-02-02"),]
        df_pwc$Global_active_power <- as.numeric(as.character(df_pwc
                                                              $Global_active_power))
        hist(df_pwc$Global_active_power, main = paste("Global Active Power"), col="red", xlab="Global Active Power (kilowatts)")
        dev.copy(png, file="plot1.png", width=480, height=480)
        dev.off()
        cat("Plot1.png has been saved in", getwd())
}
plot1()