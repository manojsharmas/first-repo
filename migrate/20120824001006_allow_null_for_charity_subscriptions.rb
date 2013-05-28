class AllowNullForCharitySubscriptions < ActiveRecord::Migration
  def change
    change_column :charity_subscriptions, :created_at, :datetime, :null => true
    change_column :charity_subscriptions, :updated_at, :datetime, :null => true
  end
end

