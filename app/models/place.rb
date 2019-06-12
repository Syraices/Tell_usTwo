class Place < ApplicationRecord
  belongs_to :user
  geocoded_by :address
  after_validation :geocode
  validates :name, :address, :description, presence: true
  validates :name, length: {minimum: 3, maximum: 20}
end
