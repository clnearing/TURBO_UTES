class ChangeStatusOnBooking < ActiveRecord::Migration[7.1]
  def change
    # remove_column
    remove_column :bookings, :status, :integer
    # Recreate column
    add_column :bookings, :status, :integer, default: 0
  end
end
