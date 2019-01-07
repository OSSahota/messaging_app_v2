require 'data_mapper'

class Message
  include DataMapper::Resource

  property :id,         Serial
  property :text,       Text
  property :created_at, DateTime

end
