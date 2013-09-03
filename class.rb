class Person
	@@number = 0
	def self.getNumber
		@@number
	end
end

puts Person.getNumber
 
# class method
class Person
	def self.address
		"hangzhou"
	end
end

def Person.access
  puts "Person.access"
end

puts "Person's ancestors are #{Person.ancestors}"
puts "Class method:#{Person.address}"
Person.access
 
# eigenclass
class Person
	class << self
		def name
			puts "saito"
		end
	end
end
 
Person.name
 
#===============================#
 
# another herpderp eigenclass demo
 
li = Person.new
zh = Person.new
 
class << zh
	def kick_li
		puts "kick li"
	end
end
 
zh.kick_li
#li.kick_li #=>will got a NoMethodError
 
#===============================#
 
# open as an instance, the object acts as a class
Person.instance_eval do
	def age
		puts "22"
	end
end
 
Person.age
 
# open as a class, the object acts as an instance
Person.class_eval do
	def sex
		puts "male"
	end
end
 
Person.new.sex
 
# Class method
def Person.nick
	puts "s"
end
 
Person.nick
 
# Open Person Class
class << Person
	def species
		puts "chinese"
	end
end
 
Person.species
 
# le herpderp Class method (MAP
class Class
	def loud_name
		puts "Saito"
	end
end
 
Person.loud_name

