$i = 0 # global var i
$num = 5

while $i<$num
  puts "inside the loop i = #$i"
  $i+=1
end

=begin
output: 

inside the loop i = 0
inside the loop i = 1
inside the loop i = 2
inside the loop i = 3
inside the loop i = 4

=end
