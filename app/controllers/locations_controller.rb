class LocationsController < ApplicationController

  def index 
    locations = Location.all
    options = { include: :locations }
    render json: LocationSerializer.new(locations, options).serialized_json
  end

  def show
    location = Location.find(params[:id])
    render json: location
  end

  def create
    location = Location.new(location_params)
    if location.save
      options = { include: :locations }
      render json: LocationSerializer.new(location, options).serialized_json
    else
      render json: { error: 'Could not be created' }
    end
  end

  def update
    location = location = Location.find(params[:id])
    location.update(location_params)
    render json: LocationSerializer.new(location, options)
  end

  def destroy
    location = Location.find(params[:id])
    location.destroy
    render json: {message: "Successfully deleted #{location.name}"}
  end

  
  private
  
  def location_params
    params.require(:location).permit(:name,
      locations_attributes: [:name, :lat, :lon]
    )
  end

end