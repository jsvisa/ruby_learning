a = Thread.new do
	print "a"
	Thread.stop
	#Thread a is stoped and no more exist
	print "b"
end
b = Thread.new do
	4 + 6
end
puts b.value
Thread.pass
print "c"
a.join
a.run
print "\n"
