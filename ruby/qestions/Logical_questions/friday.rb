=begin
tag:medium

Friday the 13th

Given the month and year as numbers, return whether that month contains a Friday 13th.
Examples

has_friday_13(3, 2020) ➞ true

has_friday_13(10, 2017) ➞ true

has_friday_13(1, 1985) ➞ false

Notes

January will be given as 1, February as 2, etc ...
=end

require 'date'
def has_friday_13(month,year)
  t = Date.new(year,month,13).friday?
  puts t
end

month = 0
year = 0
has_friday_13 3,2020
has_friday_13 10,2017
has_friday_13 1,1985


=begin

output:
true
true
false


=end
