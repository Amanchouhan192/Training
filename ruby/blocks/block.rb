def test(&block)
  block.call
end
test { puts "Hello World!"}

=begin
output 
welcome
=end
