class TripSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name
  has_many :locations

  attribute :location do |object|
    object.locations.as_json
  end
end
