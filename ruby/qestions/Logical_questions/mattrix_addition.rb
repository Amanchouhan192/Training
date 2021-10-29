require "matrix"

mat1 = Matrix[[1,2,3],
              [4,5,6],
              [7,8,9]]

mat2 = Matrix[[4,3,2],
              [5,7,2],
              [10,12,13]]

puts "sum of the mattrix is: #{mat1 + mat2}"
puts "product of the mattrix is : #{mat1*mat2}"
puts "subtraction of mattrix is : #{mat1 - mat2}"



=begin 
output:

sum of the mattrix is: Matrix[[5, 5, 5],
                             [9, 12, 8],
                             [17, 20, 22]]

product of the mattrix is : Matrix[[44, 53, 45], 
                                  [101, 119, 96],
                                  [158, 185, 147]]

subtraction of mattrix is : Matrix[[-3, -1, 1], 
                                   [-1, -2, 4],
                                   [-3, -4, -4]]

=end








=end
