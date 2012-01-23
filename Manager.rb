class Manager < Employee

	def initialize(name,age,phone,level)
		@@managerCount+=1
		super
	end
	
	#Displays the total number of Accountants
	def print_total_accountants
		print "Total number of Accountants = #{@@accountantCount} \n"
	end

	#Displays the total number of Developers
	def print_total_developers
		puts "Total number of Developers = #{@@developerCount} \n"
	end

	#Displays the total number of HRs
	def print_total_hrs
		print "Total number of HR Managers = #{@@hrCount} \n"
	end

	#Displays the total number of Managers
	def print_total_managers
		print "Total number of Managers = #{@@managerCount} \n"
	end

	#Displays name and phone number of the specified employee
	def display_phone_number(emp)
		print "Name 		: #{emp.name}	\n"		
		print "Phone Number : #{emp.phone}	\n"
	end
end
