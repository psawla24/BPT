require 'bcrypt'

class User
  include Mongoid::Document
  include Geocoder::Model::Mongoid

  geocoded_by :address
  after_validation :geocode

  field :first, type: String
  field :last, type: String
  field :email, type: String
  field :password_digest, type: String
  field :coordinates, type: Array


  has_many :messages

	attr_reader :password

	validates_presence_of :first, :message => "Enter your first name"

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


