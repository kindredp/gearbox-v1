
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

  def update
    # @gear.update gear_params
    @gear = Gear.find(params[:id])

    if @gear.update_attributes gear_params
      flash[:notice] = 'Saved!'
      redirect_to @gear
    else
        # handle failure
    end
  end

  def show
    @gear = Gear.find(params[:id])
  end

  def destroy
    @gear = Gear.find(params[:id])
    @gear.destroy
    flash[:notice] = 'Deleted!'
    redirect_to root_path
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