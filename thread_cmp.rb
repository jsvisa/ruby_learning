class Count
	attr_reader :number
	def initialize
		@number = 0
	end
	def plus
		@number += 1
	end
end

c = Count.new
t1 = Thread.new do
	9000000.times do 
		c.plus
	end
end

t2 = Thread.new do
	9000000.times do 
		c.plus
	end
end

t1.join
t2.join
puts c.number
