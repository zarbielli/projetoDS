class DonatorsController < ApplicationController

  def index
    @created_donates = []
    @progress_donates = []
    @made_donates = []

    Donate.all.each do |donate|
      if donate.donator_id == current_user.id
        if donate.status == "created"
          @created_donates << donate
        elsif donate.status == "progress"
          @progress_donates << donate
        elsif donate.status == "made"
          @made_donates << donate
        end
      end
    end
  end

  def new_donate
    donate = Donate.new
    donate.donator_id = current_user.id
    donate.status = "created" 
    donate.save

    products = params[:products]
    products.each do |product|
      product = JSON.parse product
      product["validity"] = product["validity"].to_date
      product["donate"] = donate
      Product.create(product)
    end
  end

end

