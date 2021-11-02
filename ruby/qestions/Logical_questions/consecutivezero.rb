=begin

tag:medium

Longest Sequence of Consecutive Zeroes

Write a function that returns the longest sequence of consecutive zeroes in a binary string.
Examples

longest_zero("01100001011000") ➞ "0000"

longest_zero("100100100") ➞ "00"

longest_zero("11111") ➞ ""

Notes

If no zeroes exist in the input, return an empty string.
=end
def longest_zero(s)
  max = 0 # count max zero
  n = 0   # for count number of zero

  s.split('').each do |x|
    if x == '0'
      n+=1  
    else
      n = 0
    end
  
    if n>max
      max = n
    end
  end
  if  max!=0
     puts '0'*max  # multiple by max number with single zero char
  else
    puts "''"
  end
end

s = String.new
longest_zero("01100001011000")
longest_zero("100100100")
longest_zero("11111")

=begin
0000
00
''

=end
