# Returns number of seconds since epoch
puts time  = Time.now.to_i

#convert number of seconds into time object.
puts Time.at(time)

# Returns second since epoch which includes microseconds
puts time = Time.now.to_f

=begin 
output :

1635316699
2021-10-27 12:08:19 +0530
1635316699.161594

=end
