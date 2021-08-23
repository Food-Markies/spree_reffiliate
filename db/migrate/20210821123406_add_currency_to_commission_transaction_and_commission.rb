class AddCurrencyToCommissionTransactionAndCommission < ActiveRecord::Migration[6.1]
  def change
    add_column :spree_commission_transactions, :currency, :string
    add_column :spree_commissions, :currency, :string
  end
end
