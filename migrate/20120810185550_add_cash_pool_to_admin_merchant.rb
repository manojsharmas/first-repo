class AddCashPoolToAdminMerchant < ActiveRecord::Migration
  def change
    add_column :admin_merchants, :cash_pool, :decimal
  end
end

