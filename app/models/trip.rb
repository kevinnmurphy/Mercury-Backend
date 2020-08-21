class Trip < ApplicationRecord
    has_many :locations

    # accepts_nested_attributes_for :locations, reject_if: :all_blank
    
end