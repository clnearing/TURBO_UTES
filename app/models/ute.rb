class Ute < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :model, :year, :location, :details, :image_url, :price, presence: true
  validates :details, length: { maximum: 500 }
  validates :year, numericality: { only_integer: true }, length: { maximum: 500 }
  validates :price, numericality: { only_integer: true }
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
