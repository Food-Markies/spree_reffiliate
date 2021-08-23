class AddDefaultDataInCommissionRules < ActiveRecord::Migration[6.1]
  def change
    ::Spree::CommissionRule.create :name => "User Registration", :fixed_commission => true
    ::Spree::CommissionRule.create :name => "Vendor Signup", :fixed_commission => true
    ::Spree::CommissionRule.create :name => "Order Placement", :fixed_commission => false
    ::Spree::CommissionRule.create :name => "Vendor Order Placement", :fixed_commission => false
  end
end
