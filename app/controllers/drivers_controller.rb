class DriversController < ApplicationController
  def index
    @drivers = Driver.all
  end

  def new
  end

  def create
  end

  def edit
  end

  def show
    id = params[:id]
    @driver = Driver.find(id)
  end

  def update
  end

  def destroy
  end


  private

  def driver_params
    return params.require(:driver).permit(:name, :vin)
  end
end
