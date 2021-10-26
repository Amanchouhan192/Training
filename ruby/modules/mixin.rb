#module A
module A
  def a1
    puts "we are in a1 method of module A"
  end

  def a2
    puts "we are in a2 method of module B"
  end

end
#module B
module B
  def b1
    puts "we are in b1 module of B"
  end

  def b2 
    puts "we are in b2 module of B"
  end

end

class Sample
  include A
  include B
end

s = Sample.new
s.a1
s.a2
s.b1
s.b2


=begin
ruby mixin.rb
we are in a1 method of module A
we are in a2 method of module B
we are in b1 module of B
we are in b2 module of B

=end
