require 'sinatra'
require 'faker'
require 'betterlorem'
require 'pry'


get '/' do
    erb :index
    
  end

 
  get '/greet' do
    @name = params[:name]
    @ape= params[:ape]
    @hash = params.to_s
    erb :greet
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
