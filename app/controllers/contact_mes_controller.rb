class ContactMesController < ApplicationController
  def new
    @contact_me = ContactMe.new
  end

  def create
    @contact_me = ContactMe.new(contact_me_params)
    @contact_me.save

    redirect_to root_path
  end

  private

  def contact_me_params
    params.require(:contact_me).permit(:phone_number, :email, :contact_with_whatsapp)
  end
end