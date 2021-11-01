=begin
tag:medium

Change Every Letter to the Next Letter

Write a function that changes every letter to the next letter:

    "a" becomes "b"
    "b" becomes "c"
    "d" becomes "e"
    and so on ...

Examples

move("hello") ➞ "ifmmp"

move("bye") ➞ "czf"

move("welcome") ➞ "xfmdpnf"

Notes

There will be no z's in the tests.




=end
def nextletter(str)
  result = ("a".."z").to_a
  new_word = ""
  str.each_char do |ch|
    new_ch = result[result.index(ch) + 1]
    new_word+=new_ch
  end
  puts new_word
end


str = String.new
nextletter("hello")

=begin 
output:
ifmmp

=end
