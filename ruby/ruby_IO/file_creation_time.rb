puts File::ctime("test.txt") 
puts File::mtime("test.txt")
puts File::atime("test.txt")

=begin
output:

2021-10-27 17:27:18 +0530
2021-10-27 17:27:18 +0530
2021-10-27 17:25:46 +0530


=end
