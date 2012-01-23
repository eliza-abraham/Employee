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
end
