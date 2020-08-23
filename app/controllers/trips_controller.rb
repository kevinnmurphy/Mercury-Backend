class TripsController < ApplicationController

  def index 
    trips = Trip.all.order(id: :asc)
    options = { include: [:locations] }
    render json: TripSerializer.new(trips, options).serialized_json
  end

  def show
    trip = Trip.find(params[:id])
    options = { include: [:locations] }
    render json: TripSerializer.new(trips, options).serialized_json
  end

  def create
    trip = Trip.new(trip_params)
    if trip.save
      options = { include: [:locations] }
      render json: TripSerializer.new(trip, options).serialized_json
    else
      render json: { error: 'Could not be created' }
    end
  end

  def update
    trip = trip = Trip.find(params[:id])
    trip.update(trip_params)
    options = { include: [:locations] }
    render json: TripSerializer.new(trip, options)
  end

  def destroy
    trip = Trip.find(params[:id])
    trip.destroy
    render json: {message: "Successfully deleted #{trip.name}"}
  end

  
  private
  
  def trip_params
    params.require(:trip).permit(:name, :description,
      locations_attributes: [:name, :lat, :lon]
    )
  end

end