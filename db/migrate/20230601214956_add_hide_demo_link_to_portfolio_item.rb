class AddHideDemoLinkToPortfolioItem < ActiveRecord::Migration[7.0]
  def change
    add_column :portfolio_items, :hide_demo_link, :boolean, default: true
  end
end
