class AddDtIdToEventTransactions < ActiveRecord::Migration
  def change
    change_table :event_transactions do |t|
      t.references :deposit_transaction
    end
  end
end

