class AddMerchantIdToAdminMerchant < ActiveRecord::Migration
  def change
    add_column :admin_merchants, :merchant_id, :integer
  end
end
