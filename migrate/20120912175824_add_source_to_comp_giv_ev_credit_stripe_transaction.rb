class AddSourceToCompGivEvCreditStripeTransaction < ActiveRecord::Migration
  def change
    add_column :comp_giv_ev_credit_stripe_transactions, :source, :string
  end
end

