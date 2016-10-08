class HomeController < ApplicationController
  def index
  	redirect_to items_path
  end
end
