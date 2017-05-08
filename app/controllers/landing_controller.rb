class LandingController < ApplicationController

  def index
    @plant = Plant.all


    respond_to do |format|
      format.html
      format.csv { render text: @plant.to_csv }
    end
  end

end
