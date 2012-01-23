class Developer < Employee

	def initialize(name,age,phone,level)
		@@developerCount+=1
		super
	end

	#Displays the total number of developers
	def print_total_developers
		puts "Total number of Developers = #{@@developerCount} \n"
	end
end
