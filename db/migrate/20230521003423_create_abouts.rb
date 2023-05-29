class CreateAbouts < ActiveRecord::Migration[7.0]
  def change
    create_table :abouts do |t|
      t.text :description
      t.integer :project_completed_count, default: 0
      t.integer :happy_clients_count, default: 0
      t.string :title_one
      t.string :description_one
      t.string :title_two
      t.string :description_two
      t.string :title_three
      t.string :description_three
      t.string :title_four
      t.string :description_four

      t.timestamps
    end
  end
end
