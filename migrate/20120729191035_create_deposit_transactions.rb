class CreateDepositTransactions < ActiveRecord::Migration
  def change
    create_table :deposit_transactions do |t|
      t.references :user
      t.integer :credits

      t.timestamps
    end
    add_index :deposit_transactions, :user_id
  end
end

