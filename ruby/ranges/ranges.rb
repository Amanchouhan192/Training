#Assume a range 
digits = 0..9

puts digits.include?(5)
ret  = digits.min
puts "Min value is #{ret}"

ret = digits.max
puts "Max value is #{ret}"

ret = digits.reject {|i| i<5}
puts "Rejected values are #{ret}"

digits.each do |digit|
  puts "In Loop #{digit}"
end

=begin
output:

true
Min value is 0
Max value is 9
Rejected values are [5, 6, 7, 8, 9]
In Loop 0
In Loop 1
In Loop 2
In Loop 3
In Loop 4
In Loop 5
In Loop 6
In Loop 7
In Loop 8
In Loop 9


=end
