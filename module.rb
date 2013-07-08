class Person
	include Comparable
	attr :age
	def <=>(aPerson)
		@age <=> aPerson.age
	end
	def initialize(name, gender, age)
		@name = name
		@gender = gender
		@age = age
	end
end

aPerson = Person.new("Tom", "male", 18)
bPerson = Person.new("Jerry", "male", 10)
cPerson = Person.new("Kate", "male", 18)

puts aPerson < bPerson
puts aPerson == cPerson

class IntegerFinder
	include Enumerable
	def initialize(aString)
		@string = aString
	end

	def each
		@string.scan(/[1-9]\d*/) do |integer|
			yield integer
		end
	end
end
aDigitFinder = IntegerFinder.new("This is 123, 234, 345 and 100")
aDigitFinder.collect do |i|
	print i, "\n"
end
aArray = aDigitFinder.find_all do |i|
	i.to_i > 50 
end
puts "\n", aArray.to_s

puts (5..10).inject {|sum, i| sum + i}
#puts (5..10).inject do |sum, i|
#	sum + i
#end

4.times do |i|
	File.open("temp.rb", "w") do |f|
		f.puts "def test"
		f.puts "#{i}"
		f.puts "end"
	end
	load "temp.rb"
	puts test
end
puts $:

