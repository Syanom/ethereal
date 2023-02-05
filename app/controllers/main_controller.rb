class MainController < ApplicationController
  def home
    @slideshow_picture = SlideshowPicture.first
  end

  def search
  end

  def contact_me
  end
end