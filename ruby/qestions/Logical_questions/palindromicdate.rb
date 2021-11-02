=begin
tag:medium
Palindromic Dates

The 2nd of February 2020 is a palindromic date in both dd/mm/yyyy and mm/dd/yyyy format (02/02/2020). Given a date in dd/mm/yyyy format, return true if the date is palindromic in both date formats, otherwise return false.
Examples

palindromic_date("02/02/2020") ➞ true

palindromic_date("11/12/2019") ➞ false

palindromic_date("11/02/2011") ➞ false
# Although 11/02/2011 is palindromic in dd/mm/yyyy format,
# it isn't in mm/dd/yyyy format (02/11/2011)

Notes

    All dates will be valid in both date formats.
    The date must be palindromic in both dd/mm/yyyy and mm/dd/yyyy formats to pass.

=end
def is_palindrome(str)
  str == str.reverse
end

def palindromic_date(date)
  d, m, y = date.split ?/
  puts is_palindrome(d + m + y) && is_palindrome(m + d + y)
end

palindromic_date("02/02/2020")
palindromic_date("11/12/2019")
palindromic_date("11/02/2011")

=begin
output:
true
false
false
=end
