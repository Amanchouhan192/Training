begin 
  raise 'A test exception.'
rescue Exception =>e
  puts e.message
  puts e.backtrace.inspect
end

=begin
output:

A test exception.
["raise1.rb:2:in `<main>'"]


=end
