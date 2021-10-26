def test(a1 = "Ruby",a2 = "Rails")        # method with parameter
  puts"The programming language is #{a1}"
  puts"The programming language is #{a2}"
end
test "Python","Django"    # method calling
test                      #method calling

=begin
output:

ruby methodtest.rb

The programming language is Python
The programming language is Django
The programming language is Ruby
The programming language is Rails

=end
