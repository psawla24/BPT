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
    :thumb => "100x100#",
    :small => "150x150>"
  }

  has_mongoid_attached_file :avatar1,
    :styles => {
    :medium => "200x200"
  }

  has_mongoid_attached_file :avatar2,
    :styles => {
    :medium => "200x200"
  }

  has_mongoid_attached_file :avatar3,
    :styles => {
    :medium => "200x200"
  }

  has_mongoid_attached_file :avatar4,
    :styles => {
    :medium => "200x200"
  }

  has_mongoid_attached_file :avatar5,
    :styles => {
    :medium => "200x200"
  }

  has_mongoid_attached_file :avatar6,
    :styles => {
    :medium => "200x200"
  }

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

	 validates_attachment_content_type :avatar, :avatar1 ,:avatar2, :avatar3, :avatar4, :avatar5, :avatar6, content_type: /\Aimage\/.*\Z/

end


