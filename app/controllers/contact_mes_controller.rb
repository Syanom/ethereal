class ContactMesController < ApplicationController
  def new
    @contact_me = ContactMe.new unless @contact_me
  end

  def create
    @contact_me = ContactMe.new(contact_me_params)
    if @contact_me.save
      redirect_to root_path
    else
      redirect_to new_contact_me_path
    end
  end

  private

  def contact_me_params
    params.require(:contact_me).permit(:phone_number, :email, :contact_with_whatsapp)
  end
end