class PagesController < ApplicationController
  layout "mylayout", only: [:home]
  def home
  end
  def index
    #render layout: "mylayout"
    #render "index2"
    redirect_to "https://www.facebook.com/"
  end
  def show
  end
end
