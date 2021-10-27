time  = Time.new

#Here is the interpretation
puts time.zone #"UTC" return the timezone
puts time.utc_offset # 0 UTC is 0 seconds offset from UTC
puts time.zone  #"PST" (or whatever your timezone is)
puts time.isdst #false : If UTC does not have DST.
puts time.utc? #true : if t is in UTC time zone
puts time.localtime # convert to local time zone
puts time.gmtime #convert back to utc
puts time.getlocal #return a new time object in local zone
puts time.getutc #return a new time object in utc


=begin
output:

IST
19800
IST
false
false
2021-10-27 12:20:46 +0530
2021-10-27 06:50:46 UTC
2021-10-27 12:20:46 +0530
2021-10-27 06:50:46 UTC

=end
