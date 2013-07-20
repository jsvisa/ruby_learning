begin
	num = 10
	denom = 0
	val = num / denom
rescue ZeroDivisionError => ex
	puts "Error, divide zero " + ex.class.to_s

	# restart from beginning
	#retry 
ensure
	puts "Finish the process"
end

def meth1
	meth2
end
def meth2
	meth3
end
def meth3
	begin
		puts "Throw out an error"
		raise RuntimeError, "Test Error", caller[1..3]
	rescue RuntimeError => ex
		puts ex.backtrace
	else
		puts "No matched error"
	end
end

meth1

class MyException < RuntimeError
end
class MyException1 < RuntimeError
end

begin
	raise MyException, "MyException Error"
#rescue MyException => ex
#	puts ex.to_s #puts ex's description
#	puts ex.backtrace.join("\n")
rescue MyException1 => ex
	puts ex.to_s #puts ex's description
	puts ex.backtrace.join("\n")
ensure
	puts "Finish thr process"
end
	
