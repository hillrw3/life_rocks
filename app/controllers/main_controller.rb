class MainController < ApplicationController
  before_action :gif_info, only: [:create]

  def index

  end

  def create
    
    redirect_to root_path
  end

  def gif_info(search_term)
    JSON.parse(open("http://api.gifme.io/v1/search?query=#{search_term}&limit=20&page=0&key=rX7kbMzkGu7WJwvG").read)
  end

end