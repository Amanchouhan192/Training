newfile = File.new("input.txt","r")
if newfile 
  content = newfile.sysread(200)
  puts content
else
  puts "Unable to open file!"
end

=begin
output:
This is a simple text file for testing purpose.
=end
