require 'date'
 
author = "Saito"
email = "saitowu@gmail.com"
date = Date.new(2012, 7, 30)
 
s = %w{
	. . . . . . .
	. . o o o . .
	. o . . . . .
	. . o o o . .
	. . . . . o .
	. . o o o . .
	. . . . . . .
}
 
a = %w{
	. . . . . . .
	. . . . . . .
	. . o o o . .
	. o . . o . .
	. o . . o . .
	. . o o . o .
	. . . . . . .
}
 
i = %w{
	. . . . . . .
	. . . . . . .
	. . . o . . .
	. . . . . . .
	. . . o . . .
	. . . o . . .
	. . . . . . .
}
 
t = %w{
	. . . . . . .
	. . . . . . .
	. . . o . . .
	. . o o o . .
	. . . o . . .
	. . . o o . .
	. . . . . . .
}
 
o = %w{
	. . . . . . .
	. . . . . . .
	. . o o . . .
	. o . . o . .
	. o . . o . .
	. . o o . . .
	. . . . . . .
}
 
 
 
matrix = []
chars = [s, a, i, t, o]
chars.each{|c| matrix += c.each_slice(7).to_a.transpose.flatten}
 
%x[git init]
 
matrix.each do |day|
	  if day == "o"
		      %x[git commit --allow-empty --author="#{author} <#{email}>" --date="#{date.to_time}" -m"#{date.to_time} - by: #{author}"]
			    end
	    date = date.next
end
