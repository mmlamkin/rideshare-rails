class TripsController < ApplicationController
  def index
  end

  def new

  end

  def create
    @trip = Trip.new
    @trip.passenger_id = params[:passenger_id]
    @trip.driver_id = Driver.all.sample.id
    @trip.date = Time.now
    if @trip.save
      redirect_to passenger_path(@trip.passenger_id)
    else
      render :new
    end
  end

  def edit
    id = params[:id]
    @trip = Trip.find_by(id: id)
  end

  def show
    id = params[:id]
    @trip = Trip.find(id)
  end

  def update
    id = params[:id]
    @trip = Trip.find_by(id: id)
    
  end

  def destroy
  end

  private

  def trip_params
    return params.require(:trip).permit(:passenger_id, :driver_id, :date, :rating, :cost)
  end
end
