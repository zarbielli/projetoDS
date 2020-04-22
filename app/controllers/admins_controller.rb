class AdminsController < ApplicationController

  def index
    @pending_charities = []
    @pending_donators = []
    @accepted_donators = []
    @accepted_charities = []
    @created_donates = []
    @progress_donates = []
    @made_donates = []

    Donator.all.each do |donator|
      if donator.register_validate.status == false
        @pending_donators << donator
      end
    end

    Charity.all.each do |charity|
      if charity.register_validate.status == false
        @pending_charities << charity
      end
    end

    Donator.all.each do |donator|
      if donator.register_validate.status == true
        @accepted_donators << donator
      end
    end

    Charity.all.each do |charity|
      if charity.register_validate.status == true
        @accepted_charities << charity
      end
    end

    Donate.all.each do |donate|
      if donate.status == "created"
        @created_donates << donate
      elsif donate.status == "progress"
        @progress_donates << donate
      elsif donate.status == "made"
        @made_donates << donate
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
  