require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  'Hello World!'
end

get '/secret' do
  'Apple!'
end

get '/random-cat' do
  @nickname = %w[Amigo Misty Almond].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @nickname = params[:nickname]
  erb(:index)
end
