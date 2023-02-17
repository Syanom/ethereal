class ContactMesController < ApplicationController
  def new
    @contact_me = ContactMe.new
  end

  def create
    @contact_me = ContactMe.new
    @contact_me.save

    redirect_to root_path
  end
end