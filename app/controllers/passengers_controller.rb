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
