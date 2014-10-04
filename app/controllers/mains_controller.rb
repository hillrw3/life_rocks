require "json"
require "open-uri"

class MainsController < ApplicationController

  def index
    @reason = Main.new
  end

  def show
    if Main.last.id % 3 == 0
      @reason = 'photo.JPG'
    else
      @reason = gif_info(Main.last.reason)["data"][0]["link"]
    end
  end

  def create
    @reason = Main.new(reason: params[:main][:reason])
    @reason.save
    redirect_to main_path(@reason)
  end

  def gif_info(search_term)
    JSON.parse(open("http://api.gifme.io/v1/search?query=#{search_term}&limit=1&page=0&key=rX7kbMzkGu7WJwvG").read)
  end

end