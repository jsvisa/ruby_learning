h = {100 => "First", "100" => "100first", "first" => "Amy", 'second' => "Mile"}
p h
p h["first"]
p h[100]
p h["100"]

#num = 32768
num = 32_768
3.times do
	puts "#{num.class}:#{num}"
	num *= num
end

#Range

#a = [0..5]
a = [0, 1, 2, 3, 4, 5, 6]
a.each do |i|
	#puts i
	print i, " " if i == 1..i == 5
end
