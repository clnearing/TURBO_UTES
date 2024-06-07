class Review < ApplicationRecord
  belongs_to :booking
  validates :rating, :comments, :booking_id, presence: true
  validates :rating, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0,
    less_than_or_equal_to: 5
  }
end
