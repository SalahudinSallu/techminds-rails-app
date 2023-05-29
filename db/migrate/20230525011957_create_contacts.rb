class CreateContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :contacts do |t|
      t.string :location
      t.string :latitude
      t.string :longitude
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
