=begin
tag:medium

Return Only the Integer

Write a function that takes an array of elements and returns only the integers.
Examples

return_only_integer([9, 2, "space", "car", "lion", 16]) ➞ [9, 2, 16]

return_only_integer(["hello", 81, "basketball", 123, "fox"]) ➞ [81, 123]

return_only_integer([10, "121", 56, 20, "car", 3, "lion"]) ➞ [10, 56, 20, 3]

return_only_integer(["String",  true,  3.3,  1]) ➞ [1]


=end

def return_only_integer(arr)
   a = []
   l = arr.size
   i = 0
   for x in arr do
     if (x.class == Fixnum)
       a.push(x)
       i+=1
     end
   end
  # for k in 0..l do
   puts a
  # end
end
arr = Array.new(10)
arr = [1,"a",4,5,"c","Aman",10,199,"Ram",12]
return_only_integer arr


=begin 
output:

1
4
5
10
199
12

=end



