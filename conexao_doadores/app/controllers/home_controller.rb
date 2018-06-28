class HomeController < ApplicationController
  def index 
    if current_user
      if current_user.type == "Admin"
        redirect_to :admins
      elsif current_user.type == "Donator"
        redirect_to :donators
      elsif current_user.type == "Charity"
        redirect_to :charities
      end
    end
  end
end
