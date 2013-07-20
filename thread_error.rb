#a = Thread.new { raise "Error A" }
#b = Thread.new { sleep 1; puts "Thread B" }
#c = Thread.new { puts "Thread C" }
#a.join
#b.join
#c.join
#puts "Reach here"
#Thread.list.each do |i| 
#	puts i
#end

Thread.abort_on_exception = true
threads = []
threads[0] = Thread.new { raise "Error A" }
threads[1] = Thread.new { puts "Thread B" }
threads[2] = Thread.new { puts "Thread C" }

threads.each do |t|
	begin
		t.join
	rescue RuntimeError => ex
		puts "HaHa #{ex.message}"
	end
end
