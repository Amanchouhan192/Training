$i=0
$num = 10

begin 
  puts "inside the loop i = #$i"
  $i+=1
end until $i>$num

=begin 

output: 

inside the loop i = 0
inside the loop i = 1
inside the loop i = 2
inside the loop i = 3
inside the loop i = 4
inside the loop i = 5
inside the loop i = 6
inside the loop i = 7
inside the loop i = 8
inside the loop i = 9
inside the loop i = 10

=end
