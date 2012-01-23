#require 'Employee'
#require 'Developer'
#require 'Accountant'
#require 'HR'
#require 'Manager'

load 'Employee.rb'
load 'Developer.rb'
load 'Accountant.rb'
load 'Hr.rb'
load 'Manager.rb'

#em = Employee.new("Ron HR",30,9811123456,"senior")

hr = Hr.new("Ron HR",30,9811123456,"senior")
acc = Accountant.new("Romeo Acc",45,9812123456,"senior")
d1 = Developer.new("Brad Dev",25,9834123456,"junior")
d2 = Developer.new("Tom Dev",23,9856123456,"senior")
man = Manager.new("Dave Man",45,9822123456,"senior")


#Totol employee count
Employee.print_total_employees

#Everyone can check their PF Deduction
man.calculate_pfdeduction
d1.calculate_pfdeduction
hr.calculate_pfdeduction
acc.calculate_pfdeduction


#Level,name,age cannot be reset or changed by any one
#man.level=("high")


#Access to attendance granted only to HR
hr.set_attendance(d1,2)
hr.increment_attendance(d1)
hr.increment_attendance(d1,2)
hr.get_attendance(d1)
hr.set_attendance(d2,23)
hr.set_attendance(acc,31)
hr.set_attendance(man,25)
hr.set_attendance(man,30)
#d2.set_attendance(d2,23)
#acc.set_attendance(d2,23)
#man.set_attendance(d2,23)

#Access to employee with highest and lowest attendance granted to all the employees
acc.print_lowest_attendance
d1.print_highest_attendance
man.print_lowest_attendance
hr.print_highest_attendance
 
#Only HR can compare the attendance of 2 employees
hr.compare_attendance(d1,d2)
#man.compare_attendance(d1,d2)
#d2.compare_attendance(d1,d2)
#acc.compare_attendance(d1,d2)

#Access to total number of accountants to accountants, hr and managers
acc.print_total_accountants
hr.print_total_accountants
man.print_total_accountants
d1.print_total_accountants


#Access to total number of developers to developers, hr and managers
d1.print_total_developers
hr.print_total_developers
man.print_total_developers
acc.print_total_developers

#Access to total number of HR, Managers only to HR and Managers
hr.print_total_hrs
man.print_total_hrs
hr.print_total_managers
man.print_total_managers
d1.print_total_hrs
acc.print_total_hrs
acc.print_total_managers
d2.print_total_managers


#Only HR, Managers can view phone numbers and only employee can change their own phone numbers
hr.display_phone_number(d1)
d1.phone = (9823123457)
hr.display_phone_number(d1)
man.display_phone_number(d1)
#puts d1.phone
#acc.display_phone_number(d1)
#d1.display_phone_number(d1)



#Account number is accessible to only accountants
acc.set_account_number(d1,42680)
acc.set_account_number(d2,13579)
acc.set_account_number(acc,12345)
acc.set_account_number(hr,67890)
acc.set_account_number(man,24680)
acc.get_account_number(d1)
acc.get_account_number(d2)
acc.get_account_number(acc)
#hr.get_account_number(acc)
#d1.get_account_number(d2)
#man.get_account_number(acc)
#hr.set_account_number(d1,42680)
#d1.set_account_number(d1,12345)
#man.set_account_number(d1,24680)


#Expenses are set and read only by Accountants
acc.set_company_expense(200000)
acc.print_company_expense
#hr.set_company_expense(200000)
#d2.set_company_expense(200000)
#man.set_company_expense(200000)
#puts man.print_company_expense
#puts d1.print_company_expense


