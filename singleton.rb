class SingletonTest
	def meth1
		puts "This is meth1"
	end
end
obj1 = SingletonTest.new
obj2 = SingletonTest.new
class << obj2
	def meth1
		puts "This is obj2's meth1"
	end
end
obj1.meth1
obj2.meth1

