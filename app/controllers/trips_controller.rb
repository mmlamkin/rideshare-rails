class TripsController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def edit
  end

  def show
    id = params[:id]
    @trip = Trip.find(id)
  end

  def update
  end

  def destroy
  end

  private

  def trip_params
    return params.require(:trip).permit(:driver_id, :passenger_id, :date, :rating, :cost)
  end
end
