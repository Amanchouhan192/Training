newfile = File.new("input.txt","r+")
if newfile
  newfile.syswrite("Hey I am writting")
else
  puts "Unable to open the file!"
end

=begin
output:

Hey I am writting
text file for testing purpose.

=end
