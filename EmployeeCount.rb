module EmployeeCount

	#Initializing all the counters
	@@developerCount	= 0
	@@hrCount			= 0
	@@accountantCount	= 0
	@@managerCount		= 0
		
	def self.included(base)
		base.extend(TotalCount)
	end

	module TotalCount
		#define class methods here		
	end
		
	#Displays the total number of Accountants to Accountants, HRs and Managers
	def print_total_accountants
		if  Hr === self or Accountant === self or Manager === self
			print "Total number of Accountants = #{@@accountantCount} \n"
		else 
			puts "You have no access to this method!"
		end
	end

	#Displays the total number of Developers to Developers, HRs and Managers
	def print_total_developers
		if  Hr === self or Developer === self or Manager === self
			puts "Total number of Developers = #{@@developerCount} \n"
		else 
			puts "You have no access to this method!"
		end
	end

	#Displays the total number of HRs to HRs and Managers
	def print_total_hrs
		if  Hr === self or Manager === self
			print "Total number of HR Managers = #{@@hrCount} \n"
		else 
			puts "You have no access to this method!"
		end
	end

	#Displays the total number of Managers to HRs and Managers
	def print_total_managers
		if  Hr === self or Manager === self
			print print "Total number of Managers = #{@@managerCount} \n"
		else 
			puts "You have no access to this method!"
		end
	end
end
