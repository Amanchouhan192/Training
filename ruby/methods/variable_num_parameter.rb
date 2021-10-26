def sample(*test)
  puts"the number of parameter is : #{test.length}"
  for i in 0...test.length
    puts "The parameters are : #{test[i]}"
  end
end
sample "Aman","6","M"
sample "Niharika","7","F"

=begin
output:

ruby  variable_num_parameter.rb
the number of parameter is : 3
The parameters are : Aman
The parameters are : 6
The parameters are : M
the number of parameter is : 3
The parameters are : Niharika
The parameters are : 7
The parameters are : F


=end
