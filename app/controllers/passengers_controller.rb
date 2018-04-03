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
    @passenger = Passenger.find_by(id: params[:id])
    if @passenger.nil?
      redirect_to passengers_path
    end
  end

  def show
    id = params[:id]
    @passenger = Passenger.find(id)
  end

  def update
    @passenger = Passenger.find_by(id: params[:id])
    if !@passenger.nil?
      if @passenger.update(passenger_params)
        redirect_to passenger_path(@passenger.id)
      else
        render :edit
      end
    else
      redirect_to passengers_path
    end
  end

  def destroy
  end

  private

  def passenger_params
    return params.require(:passenger).permit(:name, :phone_number)
  end
end
