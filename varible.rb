a = [1, 2, 3, 4, 5]
x, y = a
puts "x = #{x} y = #{y}"

x1 = a
puts "x1 = #{x1}"
x1, y1 = 9, a
puts "x1= #{x1} y1 = #{y1}"
x1, *y1 = a
puts "x1= #{x1} y1 = #{y1}"
x1, y1 = 9, *a
puts "x1= #{x1} y1 = #{y1}"
x1, *y1 = 9, *a
puts "x1= #{x1} y1 = #{y1}"

puts defined? p

point = 84
grade = case
		when point >= 85 then 'A'
		when point >= 70 then 'B'
		else 'E'
		end
print "grade=", grade, "\n"

month = 122
Season = case month
		 when 3..5 then "Spring"
		 when 6..8 then "Summer"
		 when 9..11 then "Autumn"
	     when 12..2 then "Winter"
		 else "Error"
		 end

puts Season
