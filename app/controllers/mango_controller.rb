class MangoController < ApplicationController
  def index
    @mango = Mango.all

    respond_to do |format|
      format.html
      format.csv { render text: @mango.to_csv }
    end
  end

  def destroy
    @mango = Mango.find(params[:id])
    @mango.destroy

    redirect_to root_path
  end

  def new
    @mango = Mango.new
  end

  def create
    @mango = Mango.new(params[:mango])
    @mango.name = params[:mango][:name]
    @mango.planted = params[:mango][:planted]
    @mango.active = true
    @mango.comments = params[:mango][:comments]

    if @mango.save!
      flash[:notice] = "Mango added to database."
      redirect_to root_path
    else
      flash[:now] = "Error"
      redirect_to new_garlic_path
    end

  end

  def show
  end

  def import
    Mango.import(params[:file])
    redirect_to root_path
    flash[:notice] = "Import successful"
  end
end
