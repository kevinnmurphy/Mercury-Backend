class LocationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :lat, :lon, :updated_at
  belongs_to :trip
end