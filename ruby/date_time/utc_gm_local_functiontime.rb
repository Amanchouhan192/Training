#July 8,2008
puts Time.local(2008,7,8)
#July 8,2008,09:10am,local time
puts Time.local(2008,7,8,9,10)
#July 8,2008,09:10 UTC
puts Time.utc(2008,9,10)
#July 8,2008,09:10:11 GMT (same as UTC)
puts Time.gm(2008,7,8,9,10,11)

=begin
output:
2008-07-08 00:00:00 +0530
2008-07-08 09:10:00 +0530
2008-09-10 00:00:00 UTC
2008-07-08 09:10:11 UTC


=end

