class CharitiesController < ApplicationController
    
  def index
    @available_donates = []
    @progress_donates = []
    @received_donates = []

    Donate.all.each do |donate|
      if donate.status == "created"
        @available_donates << donate
      elsif donate.status == "progress" && donate.charity_id == current_user.id
        @progress_donates << donate
      elsif donate.status == "made" && donate.charity_id == current_user.id
        @received_donates << donate
      end
    end
  end

  def accept_donate
    donate = Donate.find(params[:donate_id])
    donate.status = "progress"
    donate.charity_id = current_user.id
    donate.save
    redirect_to :charities
  end
  
  def notify_donate
    donate = Donate.find(params[:donate_id])
    donate.status = "made"
    donate.charity_id = current_user.id
    donate.save
    redirect_to :charities
  end

  def cancel_donate
    donate = Donate.find(params[:donate_id])
    donate.status = "created"
    donate.charity_id = nil
    donate.save
    redirect_to :charities
  end



    
end