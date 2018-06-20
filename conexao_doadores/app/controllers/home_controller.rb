class HomeController < ApplicationController
  def index 
    if current_user
      if current_user.type == "Admin"
        redirect_to :admins
      end
    end
  end
end
