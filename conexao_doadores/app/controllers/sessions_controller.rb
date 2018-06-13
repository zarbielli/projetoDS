class SessionsController < ApplicationController
  before_action :block_access, except: [:destroy]
  def create
    user = User.find_by(cnpj: params[:session][:cnpj])
    if user && user.authenticate(params[:session][:password]) 
      if user.register_validate.status == true
        sign_in user
        if user.type == "Donator"
          redirect_to :controller => "donators", :action => "index"
        elsif user.type = "Charity"
          redirect_to :controller => "charities", :action => "index"
        elsif user.type = "Admin"
          redirect_to :controller => "admins", :action => "index"        
        end
      else
        puts "CADASTRO NÃO APROVADO"
        flash[:warning] = "É necessário aguardar aprovação do cadastro."
        redirect_to root_path        
      end
    else
      flash[:warning] = "Dados inválidos"      
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
