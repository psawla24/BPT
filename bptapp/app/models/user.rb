require 'bcrypt'

class User
  include Mongoid::Document
  field :first, type: String
  field :last, type: String
  field :email, type: String
  field :password_digest, type: String


	attr_reader :password

	# validates_presence_of :first, :last, :email, :password_digest, :message => "Please enter something!"
	# validates_uniqueness_of :email, :message => "Already Taken!"
	


	def password=(new_password)
		self.password_digest = BCrypt::Password.create(new_password)
	end

	def authenticate(test_password)
		if test_password && BCrypt::Password.new(self.password_digest) == test_password
			self
		else
			false
		end
	end
end


