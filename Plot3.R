hhc = read.delim("~//household_power_consumption.txt", header = T, sep = ';')

# subset dates only 2007-02-01 and 2007-02-02
hhc_sub = hhc[which(hhc$Date %in% c('1/2/2007','2/2/2007')),]

#Plot

#Convert time information
time = hhc_sub$Time
dates = hhc_sub$Date

y = paste(dates, time)

x = strptime(y, '%d/%m/%Y %H:%M:%S')
x = as.POSIXct(x)


#Plot
windows()
plot(x, as.character(hhc_sub$Sub_metering_1),type = "l", ylab = 'Energy sub metering', xlab = '')
lines(x,as.character(hhc_sub$Sub_metering_2), col = 'red')
lines(x,as.character(hhc_sub$Sub_metering_3), col = 'blue')

legend("topright", 
       legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), 
       lty = c(1,1,1), 
       lwd = c(2.5,2.5,2.5), 
       col = c('black','red', 'blue'))

png('Plot3.png', width = 480, height=480)

