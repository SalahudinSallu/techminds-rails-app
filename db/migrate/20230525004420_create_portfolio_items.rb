class CreatePortfolioItems < ActiveRecord::Migration[7.0]
  def change
    create_table :portfolio_items do |t|
      t.text :description
      t.string :title
      t.references :portfolio, null: false, foreign_key: true

      t.timestamps
    end
  end
end
