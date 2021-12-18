def test
  puts "We are out of block"
  yield
  puts "We are out of block"
  yield
end

test{
  puts "I am inside a block"
}
