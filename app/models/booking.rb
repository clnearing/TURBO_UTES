class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :ute
end
