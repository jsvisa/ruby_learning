module M
	def a(i)
		puts "M a #{i}"
	end
	def b
		puts "M b"
	end
end
class B
	def a(i)
		puts "B a #{i}"
		super(80)
		puts "B End"
	end
	def b
		puts "B b"
		super
	end
	include M
end
class A < B
	#include M
	#=> 重复的include会被忽略掉
	def a(i)
		puts "A a #{i}"
		super(90)
		puts "A End"
	end
end
obja = A.new
obja.a(99)

