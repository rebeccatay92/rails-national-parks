class ParkController < ApplicationController

  def showall
    @allparks = Park.all
  end

  def showone
    @park = Park.find(params[:id])
    render :showone
  end

  def new
    @park = Park.new
  end

  def edit
    @park = Park.find(params[:id])
    render :edit
  end

  def create
    @park = Park.new(park_params)
    @park.save
    redirect_to parks_path
  end

  def update
    @park = Park.find(params[:id])
    if @park.update(park_params)
      redirect_to parks_path
    else
      render 'edit'
    end
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
