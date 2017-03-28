class GarlicController < ApplicationController
  def index
    @garlic = Garlic.all

    respond_to do |format|
      format.html
      format.csv { render text: @garlic.to_csv }
    end
  end

  def destroy
    @garlic = Garlic.find(params[:id])
    @garlic.destroy

    redirect_to root_path
  end

  def new
    @garlic = Garlic.new
  end

  def create
    @garlic = Garlic.new(params[:garlic])
    @garlic.name = params[:garlic][:name]
    @garlic.planted = params[:garlic][:planted]
    @garlic.active = true
    @garlic.comments = params[:garlic][:comments]

    if @garlic.save!
      flash[:notice] = "Garlic added to database."
      redirect_to root_path
    else
      flash[:now] = "Error"
      redirect_to new_garlic_path
    end

  end

  def show
  end

  def import
    Garlic.import(params[:file])
    redirect_to root_path
    flash[:notice] = "Import successful"
  end
end
