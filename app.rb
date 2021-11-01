require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  'Hello World!'
end

get '/secret' do
  'Apple!'
end

get '/cat' do
  "<div>
    <img src='https://imgur.com/jFaSxym.png' style='border: 3px dashed red'>
  </div>"
end
