$globalVariable = 10            # global variable defination here

class Sample                      # class is deinfined here

  @@class_variable = 100          # class variable
  def methodscall(val1,val2,val3)
    @value_call_first = val1
    @value_call_second = val2
    @value_call_third = val3
    puts "methods var "
    local_variable = "I am local" # local variable is here
    puts "local variable data :  #local_variable"
  end

end

object = Sample.new
object.methodscall(1,"calling","Great")
puts "global variable : #$globalVariable"
