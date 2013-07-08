0.step(10, 2) do |i|
#	print i, " "
	p i
end

["apple", "orange", "banana", "watermelon"].grep(/an/) do |fruit|
	puts fruit
end

times = 0
loop do
	times += 1
	print "hello #{times} \n" 
	break if times >= 3
	#if times >= 3 then break
	#end
end

#count = 0
#for i in 1..3
#	print "Current i is #{i}\n"
#	break if count == 2
#
#	if i > 1
#		count += 1
#		#count++
#		redo 
#	end
#end

count = 0
for i in 1..3
	print "Current i is #{i}\n"
	break if count == 2

	if i > 2
		count += 1
		#count++
		retry 
	end
end

