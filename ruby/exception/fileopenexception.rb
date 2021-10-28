begin
  file = open("/unexistant_file")
  if file
    puts "File opened successfully"
  end
rescue
    file = STDIN
end

print file,"==", STDIN,"\n"


=begin 
output:

#<IO:0x000055c9466118d0>==#<IO:0x000055c9466118d0>


=end
