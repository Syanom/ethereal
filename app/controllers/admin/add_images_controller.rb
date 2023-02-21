class Admin::AddImagesController < AdminController
  before_action :find_add

  def new
    @add_image = @add.add_images.new
  end

  def create
    @add_image = @add.add_images.new(add_image_params)

    if @add_image.save
      redirect_to edit_admin_add_path(@add)
    else
      render :new
    end
  end

  def destroy
    @add_image = AddImage.find(params[:id])
    @add_image.destroy
    redirect_to edit_admin_add_path(@add)
  end

  private

  def find_add
    @add = Add.find(params[:add_id])
  end

  def add_image_params
    params.require(:add_image).permit(:id, :add_id, :image, :image_cache, :remove_image)
  end
end
