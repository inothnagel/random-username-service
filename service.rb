require 'sinatra'
require 'json'
require_relative 'username_creator.rb'

set :bind, '0.0.0.0'

get '/username_and_password' do
  username = UsernameCreator.username
  password = UsernameCreator.password
  {:username => username, :password => password}.to_json
end
