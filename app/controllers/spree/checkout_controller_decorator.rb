module Spree
  module CheckoutControllerDecorator

    def self.prepended(base)
      #before_action :set_affilate_or_referral, only: :update
      base.after_action :clear_session, only: :update
    end

    private

    def set_affilate_or_referral
      if @order.email.present?
        if cookies[:affiliate]
          @order.affiliate = Spree::Affiliate.find_by(path: cookies[:affiliate])
        elsif cookies[:referral]
          @order.referral = Spree::Referral.find_by(code: cookies[:referral])
        end
      end
    end

    def clear_session
      cookies.delete :affiliate if @order.completed?
      cookies.delete :referral if @order.completed?
    end
  end
end

::Spree::CheckoutController.prepend(Spree::CheckoutControllerDecorator)
