begin
  file = open("/unexistant_file")
  if file
    puts "File opened successfully"
  end
rescue
  fname  = "existant_file"
  retry  # this will reach at the begin 
end


=begin

Note − Notice that if the file of re-substituted name does not exist this example code retries infinitely. Be careful if you use retry for an exception process.

=end
