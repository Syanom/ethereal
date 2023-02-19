class AdminController < ApplicationController
  http_basic_authenticate_with name: Rails.application.secrets.user, password: Rails.application.secrets.password
  layout 'admin'

  def index
    redirect_to admin_contact_mes_path
  end
end
