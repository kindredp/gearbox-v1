require 'csv'

class GearsController < ApplicationController
  def index
    @csv_table = CSV.open("lib/seeds/gear.csv", :headers => true).read
    @gear = Gear.all
  end

  def new
	end

  def create
	  @gear = Gear.new(gear_params)

	  @gear.save
	  redirect_to @gear
  end

  def show
    @gear = Gear.find(params[:id])
  end

  private
	  def gear_params
	    params.require(:gear).permit(:name, :box_name)
	  end
end