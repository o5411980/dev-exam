class Property < ApplicationRecord
  validates :property_name, presence: true, length: { maximum: 255 }
  validates :rent, presence: true
  validates :street_address, presence: true, length: { maximum: 255 }
  validates :age, presence: true
  validates :property_name, length: { maximum: 400 }   
end
