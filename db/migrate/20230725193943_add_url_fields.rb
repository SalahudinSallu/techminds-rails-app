class AddUrlFields < ActiveRecord::Migration[7.0]
  def change
    # Services section icon
    add_column :service_items, :service_icon, :string

    # Portfolio image
    add_column :portfolio_items, :portfolio_item_image, :string

    # Team image
    add_column :members, :member_image, :string
  end
end
