class Employee
	
	attr_reader 	:name
	attr_reader 	:age
	attr_reader		:level
	attr_accessor 	:phone
	attr_accessor	:attendance
	attr_accessor	:accountNumber
	
	#Initializing all the counters
	@@employeeCount		= 0
	@@developerCount	= 0
	@@hrCount			= 0
	@@accountantCount	= 0
	@@managerCount		= 0

	#Initializing the companies expense
	@@expense	= 0

	#Intializing variables for employees with highest and lowest attendance
	@@highestEmployee	= nil
	@@lowestEmployee	= nil

	def initialize(name,age,phone,level)
		@@employeeCount+= 1 
	
		@attendance		= 0	
		@accountNumber	= 0

		@name	= name
		@age	= age
		@phone	= phone
		@level  = level
	end

	#Displays the total number of employees
	def self.print_total_employees
		puts "Total number of Employees: #{@@employeeCount} \n"
	end

	#Displays the name and age of the employee with the highest attendance
	def print_highest_attendance
		puts "Employee with highest attendance	\n"
		puts "Name : #{@@highestEmployee.name}	\n"
		puts "Age  : #{@@highestEmployee.age}	\n"
	end
	
	#Displays the name and age of the employee with the lowest attendance
	def print_lowest_attendance 
		puts "Employee with lowest attendance	\n"
		puts "Name : #{@@lowestEmployee.name}	\n"
		puts "Age  : #{@@lowestEmployee.age}	\n"
	end	

	#Calculates and displays the PF Reduction 
	def calculate_pfdeduction
		print "Your PF Reduction is "
		if @level == "senior"
			puts "5000 \n" 
		else
			puts "2000 \n"
		end
	end

private :level
protected :name,:age,:phone,:attendance,:accountNumber,:attendance=,:accountNumber=
	
end

