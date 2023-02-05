class MainController < ApplicationController
  def home
    @slideshow_picture = SlideshowPicture.first
  end
end