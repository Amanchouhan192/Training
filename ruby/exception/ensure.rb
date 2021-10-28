begin
  raise 'A test exception.'
rescue Exception => e
  puts e.message
  puts e.backtrace.inspect
ensure
  puts "Ensuring execution"
end

=begin
output :

A test exception.
["ensure.rb:2:in `<main>'"]
Ensuring execution


=end
