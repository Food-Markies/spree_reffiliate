module Spree
  class ReferredRecord < Spree::Base
    belongs_to :referral
    belongs_to :user, class_name: 'Spree::User'
    belongs_to :order, class_name: 'Spree::Order'
    belongs_to :vendor, class_name: 'Spree::Vendor'
    belongs_to :affiliate
    belongs_to :store_credit

    # validates_presence_of :order
  end
end
