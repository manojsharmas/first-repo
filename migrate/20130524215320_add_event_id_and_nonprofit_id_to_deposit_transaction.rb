class AddEventIdAndNonprofitIdToDepositTransaction < ActiveRecord::Migration
  def change
    add_column :deposit_transactions, :event_id, :integer
    add_column :deposit_transactions, :nonprofit_id, :integer
  end
end
