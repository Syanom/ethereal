class Admin::SlideshowPicturesController < ApplicationController
  def index
    @slideshow_pictures = SlideshowPicture.all
  end
end