class WelcomeController < ApplicationController
  def index
    @name = "Pedro"
  end
  def hello
    @name = params[:name]
  end
end
