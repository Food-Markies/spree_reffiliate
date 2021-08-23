class AddAffiliateCodeToVendor < ActiveRecord::Migration[6.1]
  def change
    add_column :spree_vendors, :affiliate_code, :string
  end
end
