class CreateUtes < ActiveRecord::Migration[7.1]
  def change
    create_table :utes do |t|
      t.string :model
      t.integer :year
      t.string :location
      t.text :details
      t.string :image_url
      t.boolean :avalability
      t.integer :price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
