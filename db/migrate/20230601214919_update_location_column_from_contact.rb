class UpdateLocationColumnFromContact < ActiveRecord::Migration[7.0]
  def change
    remove_column :contacts, :location
    add_column :contacts, :location_1, :string
    add_column :contacts, :location_2, :string
  end
end