class AddVendorToReferredRecord < ActiveRecord::Migration[6.1]
  def change
    add_column :spree_referred_records, :vendor_id, :integer
    add_index :spree_referred_records, :vendor_id
  end
end
