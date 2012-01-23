class Manager < Employee

	def initialize(name,age,phone,level)
		@@managerCount+=1
		super
	end
	
	#Displays name and phone number of the specified employee
	def display_phone_number(emp)
		print "Name 		: #{emp.name}	\n"		
		print "Phone Number : #{emp.phone}	\n"
	end
	
	def print_c_developers 
		puts "Total number of C Developers : #{@@developerC} \n"
	end
	
	def print_cpp_developers
		puts "Total number of CPP Developers : #{@@developerCpp} \n"
	end

	def print_java_developers
		puts "Total number of Java Developers : #{@@developerJava} \n"
	end
	
	def print_ruby_developers
		puts "Total number of Ruby Developers : #{@@developerRuby} \n"
	end
end
