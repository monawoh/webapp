require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  'Hello World!'
end

get '/secret' do
  'Apple!'
end

get '/cat' do
  erb(:index)
  @name = ["Amigo", "Misty", "Almond"].sample
end
