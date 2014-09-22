require 'bcrypt'

class User
  include Mongoid::Document

  field :first, type: String
  field :last, type: String
  field :email, type: String
  field :password_digest, type: String
  field :latitude, type: Float
  field :longitude, type: Float

  has_many :messages
  has_many :maps

	attr_reader :password

	# validates_presence_of :first, :message => "Enter your first name"

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

