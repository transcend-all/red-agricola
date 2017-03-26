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

  def import
    Mango.import(params[:file])
    redirect_to root_path
    flash[:notice] = "Import successful"
  end
end
