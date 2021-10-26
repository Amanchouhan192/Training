def test
  yield
end
test{

  puts "Hello world"
}
test{
  puts "HI another block"
}

=begin 
output:

ruby  block_and_methods.rb
Hello world
HI another block
=end
