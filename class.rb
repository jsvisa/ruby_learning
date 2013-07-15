class Person
	@@number = 0
	#@@number 
	def self.getNumber
		@@number
	end
end

puts Person.getNumber
 
#class method
class Person
	def self.address
		puts "hangzhou"
	end
end
 
Person.address  #class methoe
 
#eigenclass
class Person
	class << self
		def name
			puts "saito"
		end
	end
end
 
Person.name
 
#===============================#
 
#another herpderp eigenclass demo
 
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
 
#class method
Person.instance_eval do
	def age
		puts "22"
	end
end
 
Person.age
 
#instance method
Person.class_eval do
	def sex
		puts "male"
	end
end
 
Person.new.sex
 
#Class method
def Person.nick
	puts "s"
end
 
Person.nick
 
#open Person Class
class << Person
	def species
		puts "chinese"
	end
end
 
Person.species
 
#le herpderp Class method (MAP
class Class
	def loud_name
		puts "Saito"
	end
end
 
Person.loud_name

