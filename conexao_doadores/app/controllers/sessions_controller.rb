class SessionsController < ApplicationController
  before_action :block_access, except: [:destroy]
  def create
    user = User.find_by(cnpj: params[:session][:cnpj])
    if user && user.authenticate(params[:session][:password])
      sign_in user
      if user.type == "Donator"
        redirect_to :controller => "donators", :action => "index"
      elsif user.type = "Charity"
        redirect_to :controller => "charities", :action => "index"
      elsif user.type = "Admin"
        redirect_to :controller -> "admins", :action => "index"        
      end
    else
      redirect_to root_path
    end
  end
  
  def new
  end

  def destroy
    sign_out
    redirect_to root_url
  end
end
