class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :ute
  # belongs_to :review
end
