class CreateTablePurchases < ActiveRecord::Migration
  def up
  	create_table :purchases do |t|
      t.string :venue
      t.float :spent
      t.integer :roc_percent
      t.timestamps
    end

  end

  def down
  	drop_table :purchases
  end
end
