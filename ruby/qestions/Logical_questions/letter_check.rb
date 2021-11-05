=begin
tag : medium

Are Letters in the Second String Present in the First?

Create a function that accepts an array of two strings and checks if the letters in the second string are present in the first string.
Examples

letter_check(["trances", "nectar"]) ➞ true

letter_check(["compadres", "DRAPES"]) ➞ true

letter_check(["parses", "parsecs"]) ➞ false

Notes

    Function should not be case sensitive (as indicated in the second example).
    Both strings are presented as a single argument in the form of an array.
    Bonus: Solve this without RegEx.


=end
def letter_check(arr)
r = arr[0].downcase  # upper case letter to lower case
	l = arr[1].downcase # lower case letter
	count = 0  # to count the matching char
	i = 0 
	while i < l.length   #till the length of second string
		ele = l[i]   # storing char in var ele of string second
		if r.include?(ele) # compare and checking for r in char ele
			count += 1 # increament the count
		end
                i += 1 # increament by 1 the length count till end
	end
      if count == l.length # count of match char is equal to length of string 2nd
        puts true
      else
        puts false 
      end
end
arr = String.new

letter_check(["trances", "nectar"])
letter_check(["compadres", "DRAPES"])
letter_check(["parses", "parsecs"])

=begin
output:
true
true
false
=end
