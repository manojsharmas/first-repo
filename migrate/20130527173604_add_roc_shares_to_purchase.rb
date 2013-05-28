class AddRocSharesToPurchase < ActiveRecord::Migration
  def change
    add_column :purchases, :roc_shares, :float
  end
end
