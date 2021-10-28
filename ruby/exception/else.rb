begin
  # raise 'A test exception.'
  puts "I'm not raising exception"
rescue Exception=>e
  puts e.message
  puts e.backtrace.inspect
else
  puts "Congratulations-- no errors!"
ensure
  puts "Ensuring execution"
end

=begin
output:

I'm not raising exception
Congratulations-- no errors!
Ensuring execution



=end
