class MainController < ApplicationController
  def home
    @slideshow_pictures = SlideshowPicture.where(active: true)
    @width = "#{@slideshow_pictures.count * 100}%"
  end
end