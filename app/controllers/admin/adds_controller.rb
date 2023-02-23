class Admin::AddsController < AdminController
  def index
    @adds = Add.all
  end

  def new
    @add = Add.new
  end

  def create
    @add = Add.new(add_params)
    if @add.save
      redirect_to admin_adds_path
    else
      render :new
    end
  end

  def edit
    @add = Add.find(params[:id])
    render :new
  end

  def update
    @add = Add.find(params[:id])
    if @add.update(add_params)
      redirect_to admin_adds_path
    else
      render :new
    end
  end

  def destroy
    @add = Add.find(params[:id])
    @add.destroy
    redirect_to admin_adds_path
  end

  private

  def add_params
    params.require(:add).permit(:id, :active, :main_image, :main_image_cache, :remove_main_image, :description, :house, :flat,
                                :for_rent, :for_sale, :price_tl, :price_usd, :price_rub, :price_eur, :square_brut, :square_net,
                                :rooms, :living_rooms, :building_age, :floor, :heating, :number_of_bathrooms, :furnished,
                                :credit_available, :video_call_available, :elevator)
  end
end
