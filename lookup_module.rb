module M
	def my_mythod
		'M#my_mythod'
	end
end
module N
	def my_mythod
		'N#my_mythod'
	end
end

class C
	include M
	include N
end

class D < C; end
puts D.new.my_mythod
puts D.ancestors
