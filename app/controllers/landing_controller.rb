class LandingController < ApplicationController

  def index
    @garlic = Garlic.all
    @redonion = RedOnion.all
    @mango = Mango.all
    @whiteonion = WhiteOnion.all
  end

end
