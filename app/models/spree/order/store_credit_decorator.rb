module Spree
  class Order < Spree::Base
    module StoreCreditDecorator

      def total_available_store_credit
        return 0.0 unless user

        user.total_available_store_credit(currency)
      end

    end
  end
end

::Spree::Order.prepend(Spree::Order::StoreCreditDecorator)
