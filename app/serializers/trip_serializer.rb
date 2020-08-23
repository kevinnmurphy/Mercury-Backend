class TripSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :description, :updated_at
  has_many :locations

  # attribute :location do |object|
  #   object.locations.as_json
  # end
end