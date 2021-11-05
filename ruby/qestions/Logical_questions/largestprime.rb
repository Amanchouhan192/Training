=begin

tag:medium

Find the Largest Prime within a Range

Given two integers as arguments, create a function that finds the largest prime within the range of the two integers.
Examples

fat_prime(2, 10) ➞ 7
# range [2, 3, 4, 5, 6, 7, 8, 9, 10] and the largest prime is 7.

fat_prime(10, 2) ➞ 7
# [10, 9, 8, 7, 6, 5, 4, 3, 2] and the largest prime is 7.

fat_prime(4, 24) ➞ 23
# range [4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24] the largest prime is 23.

Notes

All numbers will be positive integers.


=end
require 'prime'
def fat_prime(n,m)
  min = [n,m].min
  max = [n,m].max
  isprime = 0
  while (min<=max)
    if (Prime.prime? max)
        isprime = max
        break
    end
    max-=1
  end  
  puts isprime
end

n = 0
m = 0
fat_prime(2,10)
fat_prime(10,2)
fat_prime(4,24)

=begin
output:
7
7
23


=end

