class Map
  include Mongoid::Document
  include Mongoid::Timestamps

  field :latitude, type: Float
  field :longitude, type: Float

  validates_presence_of :latitude, :longitude
end


