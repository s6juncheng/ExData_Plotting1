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


windows()
par(mfrow = c(2,2))
#plot1
plot(x, hhc_sub$Global_active_power,type = "l", ylab = 'Global Active Power (kilowatts)', xlab = '')

#plot2
plot(x, hhc_sub$Voltage, type = 'l', ylab = 'Voltage', xlab = 'datetime')

#plot3
plot(x, as.character(hhc_sub$Sub_metering_1),type = "l", ylab = 'Energy sub metering', xlab = '')
lines(x,as.character(hhc_sub$Sub_metering_2), col = 'red')
lines(x,as.character(hhc_sub$Sub_metering_3), col = 'blue')
legend("topright", 
       legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), 
       lty = c(1,1,1), 
       lwd = c(2.5,2.5,2.5), 
       col = c('black','red', 'blue'),
               bty = 'n' #remove box
       )

#plot4
plot(x, hhc_sub$Global_reactive_power, type = 'l', ylab = 'Global_reactive_power', xlab = 'datetime')


#Save plots
<<<<<<< HEAD
png('Plot4.png', width = 480, height=480)
=======
png('Plot4.png', width = 480, height=480)
>>>>>>> 542e48e0c4d3efec724faed10c0cf9a6aadc9cc9
