=begin
tag:medium
Check if a Number is Prime

Create a function that returns true if a number is prime, and false otherwise. A prime number is any positive integer that is evenly divisible by only two divisors: 1 and itself.

The first ten prime numbers are:

2, 3, 5, 7, 11, 13, 17, 19, 23, 29

Examples

is_prime(31) ➞ true

is_prime(18) ➞ false

is_prime(11) ➞ true

Notes

    A prime number has no other factors except 1 and itself.
    If a number is odd it is not divisible by an even number.
    1 is not considered a prime number.


=end


def primenumber(num)
  n = 2
  res = true
  while n<num
    if num%n==0 
      return false
      n+=1
    end
    return true
  end
end

def is_prime(num)
  if(primenumber(num))
    puts "Number #{num} is a prime number"
  else
    puts "Number #{num} is not a prime number"
  end
end

is_prime(78)
is_prime(8)
is_prime(11)
=begin
Number 7 is a prime number
Number 8 is not a prime number


=end
