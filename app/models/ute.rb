class Ute < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings

  validates :model, :year, :location, :details, :image_url, :price, presence: true
  validates :details, length: { maximum: 500 }
  validates :year, numericality: { only_integer: true }, length: { maximum: 500 }
  validates :price, numericality: { only_integer: true }
  include PgSearch::Model
  pg_search_scope :search_by_model_year_and_location,
  against: [ :model, :year, :location ],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
