class AddReferralToSpreeOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :spree_orders, :referral_id ,:integer

    add_index :spree_orders, :referral_id
  end
end
