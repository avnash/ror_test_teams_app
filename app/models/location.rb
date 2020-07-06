class Location < ApplicationRecord
  has_many :sub_regions, class_name: "Location", foreign_key: "parent_location_id"
  belongs_to :parent_location, class_name: "Location", optional: true
end
