class Post
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic

  field :rating, type: Integer
  field :location, type: String
  field :lengthofstay, type: Integer
  field :hostel, type: String
  field :hostelreview, type: String
  field :attraction, type: String
  field :attractionreview, type: String
  field :overall, type: String
  field :latitude, type: Float
  field :longitude, type: Float

end
