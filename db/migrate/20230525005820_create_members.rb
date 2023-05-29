class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.string :name
      t.string :location
      t.string :role
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
