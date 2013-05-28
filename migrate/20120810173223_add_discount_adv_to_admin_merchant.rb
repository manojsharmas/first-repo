class AddDiscountAdvToAdminMerchant < ActiveRecord::Migration
  def change
    add_column :admin_merchants, :discount_adv, :decimal
  end
end
