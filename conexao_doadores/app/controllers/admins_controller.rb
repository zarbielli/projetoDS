class AdminsController < ApplicationController

  def index
    @charities = []
    @donators = []

    Donator.all.each do |donator|
      if donator.register_validate.status == false
        @donators << donator
      end
    end

    Charity.all.each do |charity|
      if charity.register_validate.status == false
        @charities << charity
      end
    end
  end

  def approve_register
    register_validate = RegisterValidate.find_by(user_id: params[:user_id])
    register_validate.status = true
    register_validate.save
    redirect_to :admins
  end

  def refuse_register
    user = User.find(params[:user_id])
    user.delete
    redirect_to :admins
  end
  
end
  