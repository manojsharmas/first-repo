class CreateCompGivEvCreditStripeTransactions < ActiveRecord::Migration
  def change
    create_table :comp_giv_ev_credit_stripe_transactions do |t|
      t.date :log_date
      t.time :log_resp_time
      t.float :amount
      t.string :transaction_type
      t.integer :user_id

      t.timestamps
    end
  end
end

