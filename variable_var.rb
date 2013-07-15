def varadd(num1, *num2)
	sum = num1
	num2.each{ |i| sum += i }
	puts sum
end

varadd(1, 2, 3, 4, 5)
