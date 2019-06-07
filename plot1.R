df <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
df <- df[df$Date %in% c("1/2/2007","2/2/2007") ,]

df2 <- as.numeric(df$Global_active_power)
png("plot1.png", width=480, height=480)
hist(df2, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
