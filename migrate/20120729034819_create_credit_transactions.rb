class CreateCreditTransactions < ActiveRecord::Migration
  def change
    create_table :credit_transactions do |t|
      t.references :user
      t.references :charity
      t.integer :credits

      t.timestamps
    end
    add_index :credit_transactions, :user_id
    add_index :credit_transactions, :charity_id
  end
end

