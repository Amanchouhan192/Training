#write a program of linear search 
#tag:medium
def linear_search(target, array)
  counter = 0

  while counter < array.length
    if array[counter] == target
      puts counter
      break
    else
      counter += 1
    end
  end
 
end

array = Array.new
array = [1,2,5,7,4,8]
linear_search(5,array)

=begin

2

=end
