$global_variable = 10
class Class1
  def print_global
    puts "Global variable in class 1 is #$global_variable"
  end
end

class Class2
  def print_global
    puts "Global variable in class 2 #$global_varible is #$global_variable"
  end
end

class1Object = Class1.new
class1Object.print_global
class2Object = Class2.new
class2Object.print_global
