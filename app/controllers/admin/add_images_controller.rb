class Admin::AddImagesController < AdminController
  before_action :find_add

  def new
    @add_image = add.add_images.new
  end

  def create
    @add_image = @add.add_images.new(params)

    if @add_image.save
      redirect_to admin_add_path(@add)
    else
      render :new
    end
  end

  def destroy
    @add_image = AddImage.find(params[:id])
    @add_image.destroy
    redirect_to admin_add_path(@add.add_image)
  end

  private

  def find_add
    @add = Add.find(params[:add_id])
  end
end
