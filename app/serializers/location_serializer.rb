class LocationSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :lat, :lon
  belongs_to :trip
end
