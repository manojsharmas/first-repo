class CreateCharitySubscriptions < ActiveRecord::Migration
  def change
    create_table :charity_subscriptions do |t|
      t.references :user
      t.references :charity

      t.timestamps
    end
    add_index :charity_subscriptions, :user_id
    add_index :charity_subscriptions, :charity_id
  end
end

