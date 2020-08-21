class LocationsController < ApplicationController

  def index 
    locations = Location.all
    render json: LocationSerializer.new(locations).serialized_json
  end

  def show
    location = Location.find(params[:id])
    render json: location
  end

  def create
    trip = Trip.find_by_id(params[])
    location = Location.new(location_params)
    if location.save
      render json: LocationSerializer.new(location).serialized_json
    else
      render json: { error: 'Could not be created' }
    end
  end

  def update
    location = location = Location.find(params[:id])
    location.update(location_params)
    render json: LocationSerializer.new(location)
  end

  def destroy
    location = Location.find(params[:id])
    location.destroy
    render json: {message: "Successfully deleted #{location.name}"}
  end

  
  private
  
  def location_params
    params.require(:location).permit(:name, :lat, :lon, :trip_id)
  end

end