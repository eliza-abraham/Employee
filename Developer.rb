class Developer < Employee
	attr_reader :specialization
	
	def initialize(name,age,phone,level,specialize)
		@@developerCount+=1

		@specialize = specialize

		if @@skill.empty? == true or @@skill.has_key?(specialize) == false 		#if there is no previous object created OR
																				#if an object of the same specialisation does not already exists 
			#initialize the count and ebook link
			arr=[1,"default"]
			@@skill[specialize] = arr
	
			create_count_method_for_manager(specialize)
		
			create_ebook_link_method_for_hr(specialize)

		else #if the object of the same specialisation exists then simply increment the count
			@@skill[specialize][0]+=1
		end

		create_singleton_display_ebook_method(specialize)

		create_singleton_subscribe_updates(specialize)
		
		super(name,age,phone,level)
	end

	#**************PRIVATE METHODS*************
	private :specialization

	private
	#Creates a Method for Manager to print the total number of developers for a specific skill
	def create_count_method_for_manager(specialize)
		Manager.class_eval do
			define_method("print_total_#{specialize}_developers") { puts "Total number of #{specialize} developers : #{@@skill[specialize][0]} \n" }
		end
	end

	#Creates a Method for Hr to add and ebook link for a specific skill
	def create_ebook_link_method_for_hr(specialize)
		Hr.class_eval do
			define_method("add_#{specialize}_ebook_link") { |link| @@skill[specialize][1]=link;  }
		end
	end

	#Object Specific Method for each developer to check the ebook link for his/her specific skill 
	def create_singleton_display_ebook_method(specialize)
		self.instance_eval do
	        #p self.methods.sort
			define_singleton_method("print_#{specialize}_ebook_url") { puts "The link to your ebook is #{@@skill[specialize][1]} \n" }	
		end
	end

	#Object specific method for each developers to subscribe for updates for his/her his/her
	def create_singleton_subscribe_updates(specialize)
		self.instance_eval do
			define_singleton_method("subscribe_to_#{specialize}_updates") { puts "You are now subscribed to #{specialize} updates!!! \n"}
		end
	end

end
