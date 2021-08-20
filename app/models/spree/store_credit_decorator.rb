module Spree
  module StoreCreditDecorator

    def self.prepended(base)
      base.has_one :referred_record
      base.after_commit :send_credit_reward_information, on: :create, if: :referral?
    end

    def display_amount
      Spree::Money.new(amount, currency: currency)
    end

    def convert_store_credits_currency(currency)
      if user && user.store_credits.any?
        user.store_credits.each do |store_credit|
          if store_credit.currency != currency
            store_credit.amount = store_credit.amount * Spree::StoreCreditConversionRate.find_by(currency: currency).rate
            store_credit.amount_used = store_credit.amount_used * Spree::StoreCreditConversionRate.find_by(currency: currency).rate
            store_credit.amount_authorized = store_credit.amount_authorized * Spree::StoreCreditConversionRate.find_by(currency: currency).rate
            store_credit.currency = currency
            store_credit.save
          end
        end
      end
    end

    private
      def referral?
        category.try(:name) == "Referral Credit"
      end

      def send_credit_reward_information
        Spree::ReferralMailer.credits_awarded(user, display_amount.to_s).deliver_now
      end
  end
end

::Spree::StoreCredit.prepend(Spree::StoreCreditDecorator)
