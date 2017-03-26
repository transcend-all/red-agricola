class RedonionController < ApplicationController
  def index
    @redonion = RedOnion.all

    respond_to do |format|
      format.html
      format.csv { render text: @redonion.to_csv }
    end
  end

  def destroy
    @redonion = RedOnion.find(params[:id])
    @redonion.destroy

    redirect_to root_path
  end

  def import
    RedOnion.import(params[:file])
    redirect_to root_path
    flash[:notice] = "Import successful"
  end
end
