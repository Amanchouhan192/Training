=begin
tag : medium

What Type of Triangle?

Create a function which returns the type of triangle, given the side lengths. Return the following values if they match the criteria.

    No sides equal: "scalene"
    Two sides equal: "isosceles"
    All sides equal: "equilateral"
    Less or more than 3 sides given: "not a triangle"

Examples

get_triangle_type([2, 6, 5]) ➞ "scalene"

get_triangle_type([4, 4, 7]) ➞ "isosceles"

get_triangle_type([8, 8, 8]) ➞ "equilateral"

get_triangle_type([3, 5, 5, 2]) ➞ "not a triangle"

Notes

    You will be given an array of positive integers.
    Check the Resources tab for more information on the types of triangles.



=end



def type_triangle(arr)
  sides  =  arr.sort # using sort to srt the sides
  if(sides[0]==sides[2])  # if all are equal then side 1 should be equal to 2
    puts "equilateral"
  elsif sides[0]==sides[1] || sides[1]==sides[2]
    puts "isosceles"
  elsif sides!=3 # if side is not equal to 3
    puts "not a triangle"
  elsif (sides[0]!=sides[1] && sides[1]!=sides[2])
    puts "scalene"
  else puts "not a triangle"
  end
end

arr = Array.new(3)
arr = [1,2,2]
type_triangle arr

=begin 
output:

isosceles

=end
