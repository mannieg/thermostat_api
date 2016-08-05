require 'sinatra'
require "json"
require_relative 'data_mapper_setup'

class Thermostat < Sinatra::Base

  before do
    headers 'Access-Control-Allow-Origin' => '*'
  end

  get '/' do
    "Congrats the Thermostat API server is running!"
  end

  get '/thermostat' do
    user = UserInfo.first(ip_address: request.ip)
    user.to_json
  end

  post '/thermostat' do
    return_message = {}
    user = UserInfo.create(ip_address: request.ip, city: params[:city],
                     temperature: params[:temperature])
    if(user.save)
      return_message[:status] = 'OK'
    else
      return_message[:status] = 'Error'
    end
    return_message.to_json
  end

  run! if app_file == $0
end
