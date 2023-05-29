class CreateServiceItems < ActiveRecord::Migration[7.0]
  def change
    create_table :service_items do |t|
      t.string :title
      t.text :description
      t.references :service, null: false, foreign_key: true

      t.timestamps
    end
  end
end
