class AddLayoutToSpreeAffiliate < ActiveRecord::Migration[6.1]
  def change
    add_column :spree_affiliates, :layout, :string
  end
end
