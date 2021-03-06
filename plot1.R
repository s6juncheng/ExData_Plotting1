hhc = read.delim("~//household_power_consumption.txt", header = T, sep = ';')

# subset dates only 2007-02-01 and 2007-02-02
hhc_sub = hhc[which(hhc$Date %in% c('1/2/2007','2/2/2007')),]

#Plot Global Active Power
x11()
hist(as.numeric(hhc_sub$Global_active_power)/500, col = "red", xlab = 'Global Active Power (kilowatts)', main = 'Global Active Power')
#Save plot
png("Plot1.png", width = 480, height=480)

save.image("assignment1.RData")




