class WhiteonionController < ApplicationController
  def index
    @whiteonion = WhiteOnion.all

    respond_to do |format|
      format.html
      format.csv { render text: @whiteonion.to_csv }
    end
  end

  def destroy
    @whiteonion = WhiteOnion.find(params[:id])
    @whiteonion.destroy

    redirect_to root_path
  end

  def import
    WhiteOnion.import(params[:file])
    redirect_to root_path
    flash[:notice] = "Import successful"
  end
end
