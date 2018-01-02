class TripsController < ApplicationController

  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def new
    @trip = Trip.new
    @destinations = Destination.all
    @users = User.all
  end

  def create
    @trip = Trip.new(trip_params)
    if @trip.valid?
      @trip.save
      flash[:success] = "Trip successfully added"
      redirect_to destination_path(@trip.destination)
    else
      render 'new'
   end
 end

private

def trip_params
  params.require(:trip).permit(:title, :comment, :rating, :taken, :start_date, :end_date, :user_id, :destination_id)
end


end
