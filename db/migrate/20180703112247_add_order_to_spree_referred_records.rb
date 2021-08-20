class AddOrderToSpreeReferredRecords < ActiveRecord::Migration[6.1]
  def change
    add_column :spree_referred_records, :order_id ,:integer

    add_index :spree_referred_records, :order_id
  end
end
