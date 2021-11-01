=begin
tag:medium

Reverse the Order of Words with Five Letters or More

Write a function that takes a string of one or more words as an argument and returns the same string, but with all five or more letter words reversed. Strings passed in will consist of only letters and spaces. Spaces will be included only when more than one word is present.
Examples

reverse("Reverse") ➞ "esreveR"

reverse("This is a typical sentence.") ➞ "This is a lacipyt .ecnetnes"

reverse("The dog is big.") ➞ "The dog is big."

Notes

You can expect a valid string to be provided for each test case.

=end
def reverse_order(str)

  arr = str.split(' ') # splitting of the word
  result= []    # creating empty array list
  arr.each do |word|           #loop for each odd length  word
    if word.length%2!=0        # checking the odd length
      result.push(word.reverse) # pushing reverse odd length words into empty list
    else
      result.push(word)   #pushing non odd len word
    end
  end
  result.join(' ')
  puts result

end

str = String.new
reverse_order("Reverse") 

reverse_order("This is a typical sentence.") 

reverse_order("The dog is big.") 


=begin
output:
esreveR
This
is
a
lacipyt
.ecnetnes

=end
