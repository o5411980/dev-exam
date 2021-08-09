class Property < ApplicationRecord
  validates :property_name, presence: true, length: { maximum: 255 }
  validates :rent, presence: true
  validates :street_address, presence: true, length: { maximum: 255 }
  validates :age, presence: true
  validates :property_name, length: { maximum: 400 }
  has_many :nearest_stations, dependent: :destroy, inverse_of: :property
  accepts_nested_attributes_for :nearest_stations, allow_destroy: true, reject_if: :all_blank
end
