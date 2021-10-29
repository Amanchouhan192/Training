=begin
Longest Word

Write a function that finds the longest word in a sentence. If two or more words are found, return the first longest word. Characters such as apostophe, comma, period (and the like) count as part of the word (e.g. O'Connor is 8 characters long).
Examples

longest_word("Hello darkness my old friend.") ➞ "darkness"

longest_word("Hello there mate.") ➞ "Hello"

longest_word("Margaret's toy is plastic.") ➞ "Margaret's"


=end

def longest_word(string)
  arr = string.split() # for split the words
  max_length = 0      
  long_word = ""
  arr.each do |word|
    if word.length>max_length
      max_length = word.length
      long_word = word
    end
  end
  puts long_word
end

longest_word "Hello darkness my old friend."

=begin 

output:
darkness

=end
