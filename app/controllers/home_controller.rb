class HomeController < ApplicationController

  def index
    @link = Link.new
    @top_links = Link.order(clicks: :desc).first(100)
  end


end
