class Admin::SlideshowPicturesController < AdminController
  def index
    @slideshow_pictures = SlideshowPicture.all
  end

  def new
    @slideshow_picture = SlideshowPicture.new
    @slideshow_picture.active = true
  end

  def create
    @slideshow_picture = SlideshowPicture.new(slideshow_picture_params)
    if @slideshow_picture.save
      redirect_to admin_slideshow_pictures_path
    else
      render :new
    end
  end

  def edit
    @slideshow_picture = SlideshowPicture.find(params[:id])
    render :new
  end

  def update
    @slideshow_picture = SlideshowPicture.find(params[:id])
    if @slideshow_picture.update(slideshow_picture_params)
      redirect_to admin_slideshow_pictures_path
    else
      render :new
    end
  end

  def destroy
    @slideshow_picture = SlideshowPicture.find(params[:id])
    @slideshow_picture.destroy
    redirect_to admin_slideshow_pictures_path
  end

  private

  def slideshow_picture_params
    params.require(:slideshow_picture).permit(:id, :active, :image, :image_cache, :remove_image)
  end
end
