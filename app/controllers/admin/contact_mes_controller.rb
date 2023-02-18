class Admin::ContactMesController < ApplicationController
  layout 'admin'

  def index
    @contact_mes = ContactMe.all.order(created_at: :desc)
  end

  def update
    @contact_me = ContactMe.find(params[:id])
    @contact_me.update(slideshow_picture_params)

    redirect_to admin_contact_mes_path
  end

  def destroy
    @contact_me = ContactMe.find(params[:id])
    @contact_me.destroy

    redirect_to admin_contact_mes_path
  end

  private
  
  def slideshow_picture_params
    params.require(:contact_me).permit(:id, :contacted)
  end
end