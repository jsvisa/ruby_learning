x = 1
a, b, c = x, x+=1, x+=2
puts a, b, c

class Fixnum
	alias the_plus +
	def +(integer)
		the_plus(integer) * 2
	end
end
puts 1+1
puts 2+3

#==>
x = 1
a, b, c = x, x+=1, x+=2
puts a, b, c

puts %x{date}

alias old_backquote `
def	`(cmd)
	result = old_backquote(cmd)

	if $? != 0
		fail "Command #{cmd} failed:#$?"
	else
		puts "Command #{cmd} success."
	end
	result
end

#print `data`
print `date`

