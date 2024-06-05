class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :ute
  # belongs_to :review

  enum :status, { pending: 0, declined: 1, accepted: 2 }
end
