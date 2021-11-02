=begin


Christmas Tree

Write a function to create a Christmas tree based on height h.
Examples

tree(1) ➞ [
  "#"
]

tree(2) ➞ [
  " # ",
  "###"
]

tree(5) ➞ [
  "    #    ",
  "   ###   ",
  "  #####  ",
  " ####### ",
  "#########"
]

tree(0) ➞ []

Notes

N/A
=end
def tree(h)
  highest = (h*2)-1 # tree property
  tree=[]          # empty list
  char  = "#"
  multiple = 1

  while tree.length<h
    result = char*multiple
    row = result.center(highest," ")
    tree.push(row)
    multiple +=2
  end
  puts tree
end

h = gets.to_i
tree h

=begin 
output:
1
#
2
 # 
###
5
    #    
   ###   
  #####  
 ####### 
#########


=end
