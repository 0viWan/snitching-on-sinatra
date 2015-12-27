require 'sinatra'

get '/' do
  "Hello World"
end

get '/about' do
  "A little about me."
end

# get '/cities/:city/greetings/:name' do
#   "Hey #{params[:name]}! Welcome to the #{params[:city]} greeting page!"
#   "<h1>We're really excited you're here!</h1>"
# end

# get '/cities/:city/greetings/:name' do
#   erb :greeting
# end

get '/cities/:city/greetings/:name' do
  @name = params[:name]
  erb :greeting
end

post '/custom_greetings' do
  @greeting = params[:greeting]
  erb :greeting
end
