class PlantsController < ApplicationController

  def index
    @plant = Plant.all

    respond_to do |format|
      format.html
      format.csv { render text: @plant.to_csv }
    end
  end

  def destroy
    @plant = Plant.find(params[:id])
    @plant.destroy

    redirect_to root_path
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(params[:plant])
    @plant.name = params[:plant][:name]
    @plant.planted = params[:plant][:planted]
    @plant.active = true
    @plant.comments = params[:plant][:comments]

    if @plant.save!
      flash[:notice] = "Plant added to database."
      redirect_to root_path
    else
      flash[:now] = "Error"
      redirect_to new_plant_path
    end

  end

  def show
    # @plant = Plant.find(params[:id])
  end

  def import
    Plant.import(params[:file])
    redirect_to root_path
    flash[:notice] = "Import successful"
  end

end
