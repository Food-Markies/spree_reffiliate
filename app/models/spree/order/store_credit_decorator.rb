module Spree
  class Order < Spree::Base
    module StoreCreditDecorator

      def display_total_available_store_credit(currency)
        Spree::Money.new(total_available_store_credit, currency: currency)
      end

    end
  end
end

::Spree::Order.prepend(Spree::Order::StoreCreditDecorator)
