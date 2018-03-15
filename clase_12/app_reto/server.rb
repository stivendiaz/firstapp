require 'sinatra'
require 'faker'
require 'betterlorem'
require 'pry'
require 'json'
require 'sinatra/flash'
enable :sessions

def load()
  @users = JSON.parse(File.read('users.json'))
end

def guardar()
  File.write("users.json", @users.to_json)
end

def new_user(email,pass)
  if @users.keys.include?(email)
  false
  else
    @users[email.to_s] = pass.to_s
    guardar() 
    true
  end
end

def user_exist(email,pass)
  if @users.keys.include?(email)
    return true if @users[email.to_s] == pass
  else
    false
  end 
end

def secure(url)
  if request.cookies["email"] && request.cookies["password"]
    erb url.to_sym
  else 
    redirect '/login'
  end
end
#response.delete_cookie("cookie")
get '/' do
  secure ("index")
  end

post '/' do
    secure ("index")
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
  load()
  if user_exist(params[:email],params[:password]) 
    response.set_cookie("email", value: params["email"])
    response.set_cookie("password", value: params["password"])
    redirect '/'
  else
    @mensaje = "Usuario o contraseña incorrectos"
    erb :login
  end
end

get '/input' do
  load()
  erb :inputs
end

post '/input' do
  load()
  if new_user(params[:email],params[:password])
    response.set_cookie("email", value: params["email"])
    response.set_cookie("password", value: params["password"])
    redirect '/'
  else
    @mensaje = "Usuario ya registrado"
    erb :inputs
  end
end

  get '/our' do
    secure ("our")
  end

  get '/proy' do
    secure ("proy")
  end

  get '/call' do
    secure ("call")
  end

  get '/del' do
    response.delete_cookie("email")
    response.delete_cookie("password")
    redirect '/login'
  end
