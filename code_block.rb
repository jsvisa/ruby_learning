def meth1(p1, p2, &block)
	puts block.inspect
	puts block.call
end

meth1(1, 2){ "This is block" }
