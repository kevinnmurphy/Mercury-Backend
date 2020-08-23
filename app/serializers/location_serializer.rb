class LocationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :lat, :lon, :trip_id
  belongs_to :trip
end