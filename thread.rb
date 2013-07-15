#x = Thread.new { sleep 0.1; print "x\n"; print "y\n"; print "z\n" }
#y = Thread.new { print "a\n"; sleep 0.2; print "b\n"; print "c\n" }
#y.join(0.2)
#
#number1 = number2 = 0
number1 = 0
number2 = 0
thr1 = Thread.new { loop { number1 += 1 } }
print "th1:", thr1.priority, "\n"
thr1.priority = -1
thr2 = Thread.new { loop { number2 += 1 } }
print "th2:", thr2.priority, "\n"
thr2.priority = -2

sleep 1

# it doesn't work in ruby2.0
#Thread.critical= 1
puts number1
puts number2

athr = Thread.new { Thread.current["name"] = "Thread A"; Thread.stop }
bthr = Thread.new { Thread.current["name"] = "Thread B"; Thread.stop }
Thread.list.each do |x| 
	puts "#{x.inspect}: #{x["name"]}"
end
