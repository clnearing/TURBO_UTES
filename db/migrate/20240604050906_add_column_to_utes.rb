class AddColumnToUtes < ActiveRecord::Migration[7.1]
  def change
    add_column :utes, :availabilty, :boolean
  end
end
