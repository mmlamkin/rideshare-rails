class PassengersController < ApplicationController
  def index
    @passengers = Passenger.all
  end

  def new
    @passenger = Passenger.new
  end

  def create
    @passenger = Passenger.new(passenger_params)

    if @passenger.save
      redirect_to passenger_path((@passenger.id))
    else
      render :new
    end
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
