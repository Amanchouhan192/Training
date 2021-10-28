def reverseint(num)
  reverse  = 0
  until num==0
    reminder = num%10;
    reverse = (reverse*10) + reminder
    num = num/10
  end
  return reverse
end

puts reverseint 1234

#output : 4321
