=begin
Write a palindrome for string and Integer
tag: medium


=end

def palindrom_int(num)
  reverse = 0
  until num == 0
    reminder = num%10
    reverse = (reverse*10)+reminder
    num = num/10
  end
  pal =  reverse
  if(pal == num)
      puts "Yes"
  else
      puts "No"
  end
end

def palindrom_string(string)
    rev = string.reverse
    if rev == string
        puts "Yes"
    else
        puts "No"
    end
end

palindrom_string "oyo"
palindrom_int 123

=begin
output:
Yes
No

=end
