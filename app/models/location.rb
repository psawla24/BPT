class Location
  include Mongoid::Document
  include Mongoid::Timestamps


  field :coordinates, :type => Array
end
