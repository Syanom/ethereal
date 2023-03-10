class Admin::ContactMesController < AdminController
  def index
    @contact_mes = ContactMe.all.order(contacted: :asc, created_at: :desc)
  end

  def contacted
    @contact_me = ContactMe.find(params[:id])
    contacted = @contact_me.contacted ? false : true
    @contact_me.update(contacted: contacted)

    redirect_to admin_contact_mes_path
  end

  def destroy
    @contact_me = ContactMe.find(params[:id])
    @contact_me.destroy

    redirect_to admin_contact_mes_path
  end
end
