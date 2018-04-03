class PassengersController < ApplicationController
  def index
    @passengers = Passenger.all
  end

  def new
  end

  def create
  end

  def edit
  end

  def show
    id = params[:id]
    @passenger = Passenger.find(id)
  end

  def update
  end

  def destroy
  end

  private

  def passenger_params
    return params.require(:passenger).permit(:name, :phone_number)
  end
end
