class MainController < ApplicationController
  def home
    @slideshow_pictures = SlideshowPicture.where(active: true).to_a
    @slideshow_pictures.unshift(@slideshow_pictures.pop)
    @width = @slideshow_pictures.empty? ? '100%' : "#{@slideshow_pictures.count * 100}%"
  end
end
