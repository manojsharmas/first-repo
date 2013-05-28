class AddDollarExchangeAndShareExchangeToAdminMerchant < ActiveRecord::Migration
  def change
    add_column :admin_merchants, :dollar_x, :decimal
    add_column :admin_merchants, :share_x, :decimal
  end
end

