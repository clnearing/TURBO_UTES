class RemoveColumnFromUtes < ActiveRecord::Migration[7.1]
  def change
    remove_column :utes, :avalability, :string
  end
end
