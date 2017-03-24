class GarlicController < ApplicationController
  def index
    @garlic = Garlic.all

    respond_to do |format|
      format.html
      format.csv { render text: @garlic.to_csv }
    end
  end

  def import
    Garlic.import(params[:file])
    redirect_to root_path
    flash[:notice] = "Import successful"
  end
end
