n1 = 0
n2 = 1
n3 = 0
puts "Enter the number of terms:-"
n = gets.chomp.to_i
puts "The first #{n} terms of fibonacci series are:-"

c = 1
while(c<=n+1)
  if(c<=1)
    n3 = c
  else
    puts n3
    n3 = n1 + n2
    n1 = n2
    n2 = n3
  end
  c+=1
end

=begin 
output:


Enter the number of terms:-
5
The first 5 terms of fibonacci series are:-
1
1
2
3
5


=end
