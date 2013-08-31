class MyClass

  $go = 2
  def initialize(value)
    @x = value
  end

  def my_method
    @x
    var2 = 2
    local_variables.each do |var|
      puts var 
    end
  end

  def method_name
    local_variables
  end
end

class MyClass2
  def initialize(value)
    @x = value
  end

  def my_method
    @x
  end
end

object = MyClass.new(1)
local_variables.each do |var|
  puts var.to_s 
end
m = object.method(:my_method)
m.call
m = object.method(:method_name)
m.call

unbound = m.unbind
another_obj = MyClass.new(2)
m = unbound.bind(another_obj)
m.call

# bind argument must be an instance of MyClass
# unbound = m.unbind
# another_obj = MyClass2.new(2)
# m = unbound.bind(another_obj)
# m.call
 
