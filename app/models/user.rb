class User < ActiveRecord::Base


	def authenticate(email,password)
		user = find_by email: email 
		if user
			if user.password == password
				true
			else
				false
			end
		else
			false
		end
	end
end
