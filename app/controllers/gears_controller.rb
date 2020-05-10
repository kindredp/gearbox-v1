
class GearsController < ApplicationController
  def index
    # @csv_table = CSV.open("lib/seeds/gear.csv", :headers => true).read
    @gear = Gear.all
  end

  def new
	end

  def import_csv
	end

  def create
	  @gear = Gear.new(gear_params)

	  @gear.save
	  redirect_to @gear
  end

  def edit
    @gear = Gear.find(params[:id])
  end

  def show
    @gear = Gear.find(params[:id])
  end

  def destroy
    Gear.find_by(id: params[:id]).destroy
    redirect_to :index
  end

  def import
   	Gear.import(params[:file])
   	redirect_to root_url, notice: "Successfully Imported Data!!!"
  end

  private
	  def gear_params
	    params.require(:gear).permit(:name, :box_name, :photo)
	  end
end