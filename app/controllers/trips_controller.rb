class TripsController < ApplicationController
  def index
  end

  def new

  end

  def create

    @trip = create_trip(id: passenger_id)


    if @trip.save
      redirect_to passenger_path(@trip.passenger.id)
    else
      render :new
    end
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
