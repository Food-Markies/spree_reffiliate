module Spree
  module Order
    module StoreCreditDecorator

      def display_total_available_store_credit(currency)
        Spree::Money.new(total_available_store_credit, currency: currency)
      end

    end
  end
end

::Spree::Order::StoreCredit.prepend(Spree::Order::StoreCreditDecorator)
