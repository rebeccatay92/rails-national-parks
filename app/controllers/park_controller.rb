class ParkController < ApplicationController

  def showall
    @allparks = Park.all
  end

  def showone
    @park = Park.find(params[:id])
    render :showone
  end

  def create
    @park = Park.new(park_params)
    @park.save
    redirect_to action: 'showall'
    # render plain: params[:park].inspect
  end


  def destroy
    @park = Park.find(params[:id])
    @park.destroy
    redirect_to parks_path
  end

  private
  def park_params
    params.require(:park).permit(:name, :description, :picture)
  end
end
