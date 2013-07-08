factorial = 1
1.upto(10) do | entry |
	factorial *= entry
end
puts factorial

b = [1,2,3,4,5].map do  |entry|
	entry * entry
end
print b.inspect
print "\n"

result = (0..100).inject(0) do |sum, i|
	sum + i
end
puts result

def fibonacii(max)
	f1, f2 = 1, 1
	while f1 <= max
		yield f1
		f1, f2 = f2, f1 + f2
	end
end

fibonacii(1000){ |f| print f, " "}

