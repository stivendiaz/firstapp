class PagesController < ApplicationController
  layout "mylayout", only: [:home]
  def home
  end
  def index
    render layout: "mylayout"
  end
  def show
  end
end
