class Sample                      # class is deinfined here
   
  # instance variable example how I can call them
  def methodscall(val1,val2,val3)
    @value_call_first = val1
    @value_call_second = val2
    @value_call_third = val3

  puts "value for val1 : #@value_call_first"
  puts "value for val2 : #@value_call_second"
  puts "value for val2 : #@value_call_third"
  end
  
end

object = Sample.new
object.methodscall("1","calling","Great")


