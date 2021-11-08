require 'csv'
new_file=CSV.read("test.csv")

puts "file without changing"

print new_file

CSV.open("test.csv","a") do |csv|
    csv << ["apple",70]
end

new_file1=CSV.read("test.csv")

puts "file after changing"

print "\n#{new_file1}"

puts "the item added #{new_file1.last}"

=begin

output:

file without changing
[["Fruit ", "Price (rs/kg)"], ["Mango", "50"], ["orange", "40"], ["banana", "30"], ["watermalon", "30"], ["apple", "60"], ["apple", "60"], ["apple", "70"]]file after changing

[["Fruit ", "Price (rs/kg)"], ["Mango", "50"], ["orange", "40"], ["banana", "30"], ["watermalon", "30"], ["apple", "60"], ["apple", "60"], ["apple", "70"], ["apple", "70"]]the item added ["apple", "70"]

=end
