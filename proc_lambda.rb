def test_proc
	p = Proc.new{ 
		puts "In Proc.new"
		return 1 
	}
	p.call
	puts "Never come here in test_proc"
end
test_proc

def test_lambda
	p = lambda{ return 1 }
	result = p.call
	puts "The value is #{result}"
end
test_lambda

