=begin

very easy
Is the Number Less than or Equal to Zero?

Create a function that takes a number as its only argument and returns true if it's less than or equal to zero, otherwise return false.
Examples

less_than_or_equal_to_zero(5) ➞ false

less_than_or_equal_to_zero(0) ➞ true

less_than_or_equal_to_zero(-2) ➞ true

Notes

    Don't forget to return the result.
    If you get stuck on a challenge, find help in the Resources tab.
    If you're really stuck, unlock solutions in the Solutions tab.

=end

def less_then_or_equal_to_zero(num)
  if num<=0 then
    puts true
  else
    puts false
  end
end

less_then_or_equal_to_zero 5
# false
