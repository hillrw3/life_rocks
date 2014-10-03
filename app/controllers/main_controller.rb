class MainController < ApplicationController

  def index

  end

  def gif_info(search_term)
    JSON.parse(open("http://api.gifme.io/v1/search?query=#{search_term}&limit=20&page=0&key=rX7kbMzkGu7WJwvG").read)
  end

end