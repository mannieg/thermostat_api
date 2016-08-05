require 'data_mapper'
require 'dm-postgres-adapter'

require_relative 'models/user_info'

DataMapper.setup(:default, "postgres://localhost/thermostat_api")

DataMapper.finalize
DataMapper.auto_upgrade!
