class ParkController < ApplicationController

  def showall
    @allparks = Park.all
  end

  def showone
    @thispark = Park.find(params[:id])
    render :showone
  end

  def new

  end
end
