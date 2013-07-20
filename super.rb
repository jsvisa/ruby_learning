module M
	def a
		puts "M a"
	end
end
class B
	def a
		puts "B a"
		super
		puts "B End"
	end
	include M
end
class A < B
	#include M
	#=> 重复的include会被忽略掉
	def a
		puts "A a"
		super
		puts "A End"
	end
end
obja = A.new
obja.a

