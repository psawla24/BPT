require 'bcrypt'

class User

  include Mongoid::Document
  include Mongoid::Paperclip

  field :first, type: String
  field :last, type: String
  field :email, type: String
  field :password_digest, type: String
  field :latitude, type: Float
  field :longitude, type: Float

  has_mongoid_attached_file :avatar,
    :styles => {
    :small => "150x150",
    :medium => "300x300"
  }

  # :thumb => "100x100#",
  # :small => "150x150>",
  # :medium => "200X200"

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

	 validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/

   has_many :posts

end


