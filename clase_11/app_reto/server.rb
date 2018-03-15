require 'sinatra'
require 'faker'
require 'betterlorem'
require 'pry'


get '/' do
    erb :index
    
  end

 
  get '/greet' do
    @base = params[:base].to_i
    @altura= params[:alt].to_i
    @area = (@base*@altura)/2
    erb :greet
  end

  get "/red2"do
  status 201
  headers "location" => "http://www.facebook.com"

end

put '/postman' do
  status 201
  headers "Mymessage" => "stiven"
  body "hola"
  
end

delete '/postman' do
  status 201
  headers "Mymessage" => "stiven"
  body "hola"
  
end

get '/hello' do
  erb :saluda
end
post '/hello' do
  @hola = "Hola #{params[:name]}"
  erb :saluda
end

get '/login' do
  erb :login
end

post '/login' do  
  
  erb :login
end

get '/input' do
  erb :inputs
end

post '/input' do
  @params = params
  erb :inputs
end




  
  get '/our' do
    erb :our
  end

  get '/proy' do
    erb :proy
  end

  get '/call' do
    erb :call
  end
