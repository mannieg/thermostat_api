class UserInfo
  include DataMapper::Resource

  property :id, Serial
  property :ip_address, String, :unique => true
  property :city, String
  property :temperature, Float
  property :power_saving, Boolean

end
