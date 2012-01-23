class Hr < Employee

	def initialize(name,age,phone,level)
		@@hrCount+=1
		super
	end
	
	#Displays the name and attendance of the employee
	def get_attendance(emp)
		print "Name       : #{emp.name} 		\n"
		print "Attendance : #{emp.attendance} 	\n"
	end

	#Sets the attendance of the specified employee
	def set_attendance(emp,attendance)
		emp.attendance = attendance
		calc_attendance(emp)
	end
	
	#Increments the attendance of the specified employee by 1 or more
	def increment_attendance(emp,attendance=1)
		emp.attendance+=attendance
		calc_attendance(emp)
	end

	#Compares the attendance of two employees
	def compare_attendance(emp1,emp2)
		print "Comparing Attendance Details							  \n"
		print "#{emp1.name} has #{emp1.attendance} days of attendance \n"
		print "#{emp2.name} has #{emp2.attendance} days of attendance \n"
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

	#***********private methods*************
 	private 
	
	#Calculates the employee with the highest and lowest attendance
	def calc_attendance(emp)
		if @@highestEmployee == nil
			@@highestEmployee = emp	
		elsif @@highestEmployee.attendance <= emp.attendance	
			@@highestEmployee = emp
		end
		
		if 	@@lowestEmployee == nil
			@@lowestEmployee = emp			
		elsif @@lowestEmployee.attendance >= emp.attendance	
			@@lowestEmployee = emp
		end
	end

end

