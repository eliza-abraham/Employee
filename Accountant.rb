class Accountant < Employee

	def initialize(name,age,phone,level)
		@@accountantCount+=1
		super
	end
	
	#Displays the name and account number of the employee
	def	get_account_number(emp)
		puts "Name 			: #{emp.name}			\n"
		puts "Account No. 	: #{emp.accountNumber} 	\n"
	end

	#Sets the account number of the employee
	def set_account_number(emp,accountNumber)
		emp.accountNumber=accountNumber
	end

	#Displays the company's expense
	def print_company_expense
		puts "Company expenses : #{@@expense} \n"		
	end

	#Sets the company's expense
	def set_company_expense(expense)
		@@expense=expense
	end

end
