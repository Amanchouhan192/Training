time = Time.new


#Component of Time
puts "Current Time :" + time.inspect
puts time.year # year of the date
puts time.month # month of the date (1 to 12)
puts time.day #Day of the date (1 to 31)
puts time.wday # 0:Day of week: 0 is sunday
puts time.yday #365:Day of year
puts time.hour #23: 24-hour clock
puts time.min #59
puts time.sec #59
puts time.usec #999999 microseconds
puts time.zone # "UTC" : timezone name

=begin

output:

Current Time :2021-10-27 11:23:32.209965342 +0530
2021
10
27
3
300
11
23
32
209965
IST



=end
