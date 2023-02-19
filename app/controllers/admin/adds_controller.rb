class Admin::ContactMesController < ApplicationController
  http_basic_authenticate_with name: Rails.application.secrets.user, password: Rails.application.secrets.password
  layout 'admin'

  def new
    @add = Add.new
  end

  def create
    @add = Add.new(params)
    if @slideshow_picture.save
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
    if @add.update(params)
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
end
