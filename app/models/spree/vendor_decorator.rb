module Spree
  module VendorDecorator
    include Spree::TransactionRegistrable

    def self.prepended(base)
      base.has_one :affiliate_record, class_name: 'Spree::ReferredRecord'
      base.has_many :transactions, as: :commissionable, class_name: 'Spree::CommissionTransaction', dependent: :restrict_with_error

      base.after_create :process_affiliate
    end

    private

    def process_affiliate
      if affiliate_code.present?
        affiliated = Spree::Affiliate.where('lower(path) = ?', affiliate_code.downcase).first
        if affiliated
          register_commission_transaction(affiliated)
          affiliated.referred_records.create(vendor: self)
        end
      end
    end
  end
end

::Spree::Vendor.prepend(Spree::VendorDecorator)
