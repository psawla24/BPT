class Message
  include Mongoid::Document
  include Mongoid::Timestamps

  field :subject, type: String
  field :content, type: String

  # field :created_at, type: DateTime
  # field :updated_at, type: DateTime

  belongs_to :user

end

