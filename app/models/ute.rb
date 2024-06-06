class Ute < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  include PgSearch::Model
  pg_search_scope :search_by_model_year_and_location,
  against: [ :model, :year, :location ],
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }
end
