=begin
tag :medium
Finding Common Elements

Create a function that takes two lists of numbers sorted in ascending order and returns an array of numbers which are common to both the input arrays.
Examples

common_elements([-1, 3, 4, 6, 7, 9], [1, 3]) ➞ [3]

common_elements([1, 3, 4, 6, 7, 9], [1, 2, 3, 4, 7, 10]) ➞ [1, 3, 4, 7]

common_elements([1, 2, 2, 2, 3, 4, 5], [1, 2, 4, 5]) ➞ [1, 2, 4, 5]

common_elements([1, 2, 3, 4, 5], [10, 12, 13, 15]) ➞ []

Notes

    Lists are sorted.
    Try doing this problem with O(n + m) time complexity.


=end


def common_elements(arr1, arr2)
	
	combined = arr1 + arr2  # combining both the arrays for getting one array list
	unique = combined.uniq.sort # using uniq method to find uniq and sort all the unique elements
	
	both = []   # defining empty array list for storing the unique list
	
	counter = 0
	length = unique.length  
	
	while counter < length  
		 
		item = unique[counter] 
		
		if (arr1.include?(item)) && (arr2.include?(item)) # if unique elements exist in arr1 and arr2 then push on both[]
			both.push(item)
			counter += 1 # increament by 1 
		else
			counter += 1 # increament by 1 
		end
	
	end
	
	puts both
	
end

arr1 = [-1, 3, 4, 6, 7, 9]
arr2 = [1, 3]

common_elements arr1,arr2

#output:
# 3
