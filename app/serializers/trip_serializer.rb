class TripSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  has_many :locations
end
