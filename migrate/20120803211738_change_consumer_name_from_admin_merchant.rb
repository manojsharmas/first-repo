class ChangeConsumerNameFromAdminMerchant < ActiveRecord::Migration
  def change
    change_table :admin_merchants do |t|
      t.rename :consumer_name, :merchant_name
    end
  end

end

