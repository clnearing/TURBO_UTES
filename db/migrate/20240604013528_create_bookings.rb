class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :ute, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.integer :total_price
      t.integer :status

      t.timestamps
    end
  end
end
