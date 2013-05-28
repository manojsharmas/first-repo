class CreateEventTransactions < ActiveRecord::Migration
  def change
    create_table :event_transactions do |t|
      t.integer :event_id
      t.integer :cst_id
      t.string :transaction_type
      t.integer :user_id
      t.integer :charity_id
      t.integer :shares_given
      t.decimal :dollars_given, precision: 38, scale: 2 
      t.integer :credit_transaction_id
      t.boolean :processed

      t.timestamps
    end
  end
end

