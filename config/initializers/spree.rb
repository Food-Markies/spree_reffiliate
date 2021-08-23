Spree::PermittedAttributes.user_attributes.push :referral_code, :affiliate_code, :referral_credits, :referrer_benefit_enabled
Spree::PermittedAttributes.vendor_attributes.push :affiliate_code

config = Rails.application.config
config.after_initialize do
  config.spree.promotions.rules << Spree::Promotion::Rules::ReferredPromotionRule
  config.spree.promotions.rules << Spree::Promotion::Rules::AffiliatedPromotionRule
  config.spree.promotions.rules << Spree::Promotion::Rules::OneUsePerEmail
end
