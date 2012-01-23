class Developer < Employee

	def initialize(name,age,phone,level)
		@@developerCount+=1
		super
	end

end
