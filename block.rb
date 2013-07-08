#code block
def meth1(p1, p2, &block)
	puts block.inspect
	puts block.call
end

meth1(1, 2){"This is a block"}

block2 = Proc.new{"a block"}
puts block2.call

def meth2
	result = yield
	"The block result is #{result}"
end
puts meth2{ next 9 }
pr = Proc.new{next 100}
puts pr.call

#===>
##<Proc:0x81ce618@block.rb:6>
#This is a block
#a block
#The block result is 9
#100
