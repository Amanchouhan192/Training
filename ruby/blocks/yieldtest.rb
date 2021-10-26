def test 
  yield 5
  puts "You are in the method test"
  yield 100
end
test{
  |i| puts"You are in the block #{i}"
}

=begin
output :

ruby yieldtest.rb
You are in the block 5
You are in the method test
You are in the block 100

=end
