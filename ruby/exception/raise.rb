begin 
  puts'I am before the raise.'
  raise 'An error has occured.'
  puts 'I am after the raise.'
rescue
  puts 'I am rescued.'
end
puts 'I am after the begin block.'


=begin
output:

I am before the raise.
I am rescued.
I am after the begin block.

=end
