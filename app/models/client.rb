class Client < ApplicationRecord
	has_many :notes
	has_secure_password

	def admin?
		self.role == 'admin'
	end
end
