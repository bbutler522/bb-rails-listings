class User < ApplicationRecord

	has_secure_password 
	has_many :listings

	def admin? 
	  self.role == 'admin' 
	end

end
