def test
  puts"you are in the method"
  yield
  puts"you are again in the method"
  yield
end
test {
  puts"you are in the block"
}


=begin
output:

you are in the method
you are in the block
you are again in the method
you are in the block

=end
