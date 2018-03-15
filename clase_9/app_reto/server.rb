require 'sinatra'
require 'faker'
require 'betterlorem'

get '/' do
    erb :index
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
