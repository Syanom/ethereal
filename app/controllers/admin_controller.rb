class AdminController < ApplicationController
  layout 'admin'
  http_basic_authenticate_with name: Rails.application.secrets.user, password: Rails.application.secrets.password
  before_action :authorize

  def index
    redirect_to admin_contact_mes_path
  end

  private

  def authorize
    session[:authorized] = true
  end
end
