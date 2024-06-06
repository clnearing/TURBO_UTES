class AddCoordinatesToUtes < ActiveRecord::Migration[7.1]
  def change
    add_column :utes, :latitude, :float
    add_column :utes, :longitude, :float
  end
end
