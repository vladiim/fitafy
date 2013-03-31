class AddSubscribedAndPerishableTokenToUserRecord < ActiveRecord::Migration
  def change
    add_column :user_records, :subscribed, :boolean, default: true
    add_column :user_records, :perishable_token, :string
  end
end
