class AddSourceAmountToCommissionTransaction < ActiveRecord::Migration[6.1]
  def change
    add_column :spree_commission_transactions, :source_amount, :float
  end
end
