class Test
	def Test.meth1
		puts "Test.meth1"
	end
	#alias
	#alias :orig_meth1 Test.meth1
	#=> undefined Error

	$foo = 1
	alias $tao $foo
	$tao = 2

	def self.meth2
		puts "self.meth2"
	end

	class << Test
		def meth3
			puts "meth3"
		end
	end

	class << self
		def meth4
			puts "meth4"
		end 
	end
	def instanceMethod
		puts "instanceMethod"
	end
	alias :instanceNewMethod :instanceMethod
end

t = Test.new
t.instanceMethod
puts  "tao is "$tao ',' "foo is "$foo 

class Test
	def Test.meth1
		puts "Test.new meth1"
	end
	undef_method(:instanceMethod)
end

#t.instanceMethod
# no instanceMethod now
#Test.meth1
Test.meth2
Test.meth3
Test.meth4
