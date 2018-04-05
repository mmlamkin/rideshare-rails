class TripsController < ApplicationController
  def index
  end

  def new
    if params[:passenger_id]
      @trip = passenger.trips.new
    else
      @trip = Trip.new
#
#
#
#
#      def new
#   if params[:author_id]
#     # This is the nested route, /author/:author_id/books/new
#     author = Author.find_by(id: params[:author_id])
#     @books = author.books.new
#
#   else
#     # This is the 'regular' route, /books/new
#     @books = Book.new
#   end
   end
  end

  def create

    # @trip = Trip.new(params[:passenger_id])
    puts "entering create method"
    @trip = Trip.new
    puts params.inspect
    @trip.passenger_id = params[:passenger_id]
    @trip.driver_id = Driver.all.sample.id
    @trip.date = Time.now
    @trip.save!


    # author = Author.find_by(id: params[:author_id])
    # @books = author.books.new
    #

    if @trip.save
      redirect_to passenger_path(@trip.passenger_id)
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
    return params.require(:trip).permit(:passenger_id, :driver_id, :date, :rating, :cost)
  end
end
