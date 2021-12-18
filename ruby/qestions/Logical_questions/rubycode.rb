
module A
  def a1
    puts "we are in a1 method in module A"
  end

end

class Sample
  include A
end

s = Sample.new
s.a1

