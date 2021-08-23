class AddReferralCodeToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :spree_users, :referral_code, :string
  end
end
