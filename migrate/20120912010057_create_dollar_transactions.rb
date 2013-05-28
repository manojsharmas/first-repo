class CreateDollarTransactions < ActiveRecord::Migration
  def change
    create_table :dollar_transactions do |t|
      t.integer :user_id
      t.integer :charity_id
      t.datetime :tx_datetime
      t.string :tx_type
      t.integer :credit_transaction_id
      t.integer :deposit_transaction_id
      t.integer :cst_id
      t.decimal :dollars_given
      t.float :DV_used
      t.integer :shares_given
      t.boolean :processed
      t.time :processed_time

      t.timestamps
    end
  end
end
