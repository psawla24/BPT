class Post

  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  include Mongoid::Timestamps
  include Mongoid::Paperclip

  has_mongoid_attached_file :photo_one,
    :styles => {
    :small => "200x200",
    :medium => "350x350",
    :large => "500x500"
  }

  has_mongoid_attached_file :photo_two,
    :styles => {
    :small => "200x200",
    :medium => "350x350",
    :large => "500x500"
  }

  has_mongoid_attached_file :photo_three,
    :styles => {
    :small => "200x200",
    :medium => "350x350",
    :large => "500x500"
  }

  has_mongoid_attached_file :photo_four,
    :styles => {
    :small => "200x200",
    :medium => "350x350",
    :large => "500x500"
  }

  field :rating, type: Integer
  field :city, type: String
  field :country, type: String
  field :continent, type: String
  field :hostel, type: String
  field :hostel_rating, type: Integer
  field :hostel_review, type: String
  field :eatery, type: String
  field :eatery_dish, type: String
  field :sight_one, type: String
  field :sight_two, type: String
  field :sight_three, type: String
  field :safety_tips, type: String
  field :overall, type: String
  field :latitude, type: Float
  field :longitude, type: Float
  field :user_id, type: String

  validates_attachment_content_type :photo_one, :photo_two, :photo_three, :photo_four, content_type: /\Aimage\/.*\Z/

  belongs_to :user

end
