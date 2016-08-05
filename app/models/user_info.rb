class UserInfo
  include DataMapper::Resource

  property :id, Serial
  property :ip_address, String
  property :city, String
  property :temperature, Float

end
