require 'sinatra'
require 'faker'

get '/' do
  @name = "juan"
    erb :index
  end