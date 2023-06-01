class AddSocialButtonsToContact < ActiveRecord::Migration[7.0]
  def change
    add_column :contacts, :facebook_url, :string
    add_column :contacts, :instagram_url, :string
    add_column :contacts, :linkedin_url, :string
  end
end