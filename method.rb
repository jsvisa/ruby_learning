public

#meth is a private method of Object
# while we use public to change it's proprity
def meth
	puts self.class
end
puts self.class
self.meth

def test_block(arg1)
	if block_given?
		print yield(arg1), "\n"
	else
		print arg1, "\n"
	end
end
test_block("test"){"No block"}
test_block("test")
	
