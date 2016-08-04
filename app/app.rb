require 'sinatra'

class Thermostat < Sinatra::Base
  get '/' do
    "Hello, world!"
  end
end
