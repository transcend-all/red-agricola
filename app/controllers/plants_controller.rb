class PlantsController < ApplicationController

  def index
    @garlic = Garlic.all
    @redonion = RedOnion.all
    @mango = Mango.all
    @whiteonion = WhiteOnion.all

    respond_to do |format|
      format.html
      format.csv { render text: @garlic.to_csv }
    end
  end

end
