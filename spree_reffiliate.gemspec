# -*- encoding: utf-8 -*-
# stub: spree_reffiliate 4.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "spree_reffiliate".freeze
  s.version = "4.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Michael Davidson".freeze]
  s.date = "2021-08-19"
  s.description = "Configurable affiliates and referrals features for Spree".freeze
  s.email = "mdavo6@gmail.com".freeze
  s.files = [" .travis.yml".freeze, ".gitignore".freeze, ".rspec".freeze, "Gemfile".freeze, "LICENSE".freeze, "README.md".freeze, "Rakefile".freeze, "app/assets/javascripts/spree/frontend/spree_reffiliate.js".freeze, "app/controllers/spree/admin/affiliates_controller.rb".freeze, "app/controllers/spree/admin/commission_rules_controller.rb".freeze, "app/controllers/spree/admin/commissions_controller.rb".freeze, "app/controllers/spree/admin/referral_settings_controller.rb".freeze, "app/controllers/spree/affiliate/confirmations_controller.rb".freeze, "app/controllers/spree/checkout_controller_decorator.rb".freeze, "app/controllers/spree/reffiliate_controller.rb".freeze, "app/controllers/spree/user_registrations_controller_decorator.rb".freeze, "app/controllers/spree/users_controller_decorator.rb".freeze, "app/mailers/spree/affiliate_mailer.rb".freeze, "app/mailers/spree/referral_mailer.rb".freeze, "app/models/concerns/spree/transaction_registrable.rb".freeze, "app/models/spree/affiliate.rb".freeze, "app/models/spree/affiliate_commission_rule.rb".freeze, "app/models/spree/app_configuration_decorator.rb".freeze, "app/models/spree/commission.rb".freeze, "app/models/spree/commission_rule.rb".freeze, "app/models/spree/commission_transaction.rb".freeze, "app/models/spree/order/store_credit_decorator.rb".freeze, "app/models/spree/order_decorator.rb".freeze, "app/models/spree/promotion/rules/affiliated_promotion_rule.rb".freeze, "app/models/spree/promotion/rules/one_use_per_email.rb".freeze, "app/models/spree/promotion/rules/referred_promotion_rule.rb".freeze, "app/models/spree/promotion_decorator.rb".freeze, "app/models/spree/referral.rb".freeze, "app/models/spree/referral_setting.rb".freeze, "app/models/spree/referred_record.rb".freeze, "app/models/spree/role_decorator.rb".freeze, "app/models/spree/store_credit_conversion_rate.rb".freeze, "app/models/spree/store_credit_decorator.rb".freeze, "app/models/spree/user_decorator.rb".freeze, "app/overrides/spree/admin/shared/_configuration_menu.rb".freeze, "app/overrides/spree/admin/users/edit.rb".freeze, "app/overrides/spree/admin/users/index.rb".freeze, "app/overrides/spree/checkout/payment/_store_credit.rb".freeze, "app/overrides/spree/users/show.rb".freeze, "app/services/spree/transaction_service.rb".freeze, "app/views/spree/admin/affiliates/_form.html.erb".freeze, "app/views/spree/admin/affiliates/edit.html.erb".freeze, "app/views/spree/admin/affiliates/index.html.erb".freeze, "app/views/spree/admin/affiliates/new.html.erb".freeze, "app/views/spree/admin/affiliates/transactions.html.erb".freeze, "app/views/spree/admin/commission_rules/_form.html.erb".freeze, "app/views/spree/admin/commission_rules/edit.html.erb".freeze, "app/views/spree/admin/commission_rules/index.html.erb".freeze, "app/views/spree/admin/commission_rules/new.html.erb".freeze, "app/views/spree/admin/commissions/index.html.erb".freeze, "app/views/spree/admin/promotions/rules/_affiliated_promotion_rule.erb".freeze, "app/views/spree/admin/promotions/rules/_referred_promotion_rule.html.erb".freeze, "app/views/spree/admin/referral_settings/edit.html.erb".freeze, "app/views/spree/admin/users/_lifetime_stats.html.erb".freeze, "app/views/spree/affiliate/confirmations/new.html.erb".freeze, "app/views/spree/affiliate_mailer/activation_instruction.html.erb".freeze, "app/views/spree/checkout/payment/_multi_currency_store_credit.html.erb".freeze, "app/views/spree/referral_mailer/credits_awarded.html.erb".freeze, "app/views/spree/users/_referral_links.html.erb".freeze, "app/views/spree/users/_transactions.html.erb".freeze, "app/views/spree/users/referral_details.html.erb".freeze, "bin/rails".freeze, "config/initializers/spree.rb".freeze, "config/locales/en.yml".freeze, "config/routes.rb".freeze, "db/migrate/20140907041850_create_spree_referrals.rb".freeze, "db/migrate/20140907042024_create_spree_affiliates.rb".freeze, "db/migrate/20140907042102_create_spree_referred_records.rb".freeze, "db/migrate/20140907062121_add_index_to_spree_referrals.rb".freeze, "db/migrate/20140907062422_add_index_to_spree_referred_record.rb".freeze, "db/migrate/20140912003727_create_spree_promotion_rules_affiliates.rb".freeze, "db/migrate/20140913042034_add_layout_to_spree_affiliate.rb".freeze, "db/migrate/20170208141125_add_user_to_spree_affiliate.rb".freeze, "db/migrate/20170210081835_create_spree_affiliate_commission_rules.rb".freeze, "db/migrate/20170210112257_create_spree_commission_rules.rb".freeze, "db/migrate/20170213064416_create_spree_commission_transactions.rb".freeze, "db/migrate/20170213064445_create_spree_commissions.rb".freeze, "db/migrate/20170220060850_add_affiliate_to_spree_orders.rb".freeze, "db/migrate/20170412074617_add_referral_amount_and_status_to_spree_user.rb".freeze, "db/migrate/20170413065148_add_store_credit_reference_to_referred_record.rb".freeze, "db/migrate/20170413182238_add_time_stamp_to_referred_records.rb".freeze, "db/migrate/20180703030317_add_referral_to_spree_orders.rb".freeze, "db/migrate/20180703105355_create_spree_referral_commission_rules.rb".freeze, "db/migrate/20180703112247_add_order_to_spree_referred_records.rb".freeze, "db/migrate/20180710044808_create_spree_store_credit_conversion.rb".freeze, "db/seed.rb".freeze, "lib/generators/spree_reffiliate/install/install_generator.rb".freeze, "lib/generators/spree_reffiliate/seed/seed_generator.rb".freeze, "lib/spree_reffiliate.rb".freeze, "lib/spree_reffiliate/engine.rb".freeze, "lib/spree_reffiliate/factories.rb".freeze, "lib/spree_reffiliate/version.rb".freeze, "lib/tasks/spree_reffiliate.rake".freeze, "spec/assets/spree/affiliates/corona.html.erb".freeze, "spec/controllers/spree/admin/commissions_controller_spec.rb".freeze, "spec/controllers/spree/affiliate/confirmations_controller_spec.rb".freeze, "spec/controllers/spree/checkout_controller_decorator_spec.rb".freeze, "spec/controllers/spree/reffiliate_controller_spec.rb".freeze, "spec/controllers/spree/user_controller_decorator_spec.rb".freeze, "spec/controllers/spree/user_registrations_controller_decorator_spec.rb".freeze, "spec/models/spree/affiliate_commission_rule_spec.rb".freeze, "spec/models/spree/affiliate_spec.rb".freeze, "spec/models/spree/commission_rule_spec.rb".freeze, "spec/models/spree/commission_spec.rb".freeze, "spec/models/spree/commission_transaction_spec.rb".freeze, "spec/models/spree/order_decorator_spec.rb".freeze, "spec/models/spree/promotion/rules/affiliated_promotion_rule_spec.rb".freeze, "spec/models/spree/promotion/rules/referred_promotion_rule_spec.rb".freeze, "spec/models/spree/referral_spec.rb".freeze, "spec/models/spree/referred_record_spec.rb".freeze, "spec/models/spree/store_credit_spec.rb".freeze, "spec/models/spree/user_spec.rb".freeze, "spec/spec_helper.rb".freeze, "spree_reffiliate.gemspec".freeze]
  s.homepage = "https://github.com/mdavo6/spree_reffiliate".freeze
  s.licenses = ["New-BSD".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.1.0".freeze)
  s.rubygems_version = "3.2.15".freeze
  s.summary = "Spree Affiliate and Referrals extension".freeze
  s.test_files = ["spec/assets/spree/affiliates/corona.html.erb".freeze, "spec/controllers/spree/admin/commissions_controller_spec.rb".freeze, "spec/controllers/spree/affiliate/confirmations_controller_spec.rb".freeze, "spec/controllers/spree/checkout_controller_decorator_spec.rb".freeze, "spec/controllers/spree/reffiliate_controller_spec.rb".freeze, "spec/controllers/spree/user_controller_decorator_spec.rb".freeze, "spec/controllers/spree/user_registrations_controller_decorator_spec.rb".freeze, "spec/models/spree/affiliate_commission_rule_spec.rb".freeze, "spec/models/spree/affiliate_spec.rb".freeze, "spec/models/spree/commission_rule_spec.rb".freeze, "spec/models/spree/commission_spec.rb".freeze, "spec/models/spree/commission_transaction_spec.rb".freeze, "spec/models/spree/order_decorator_spec.rb".freeze, "spec/models/spree/promotion/rules/affiliated_promotion_rule_spec.rb".freeze, "spec/models/spree/promotion/rules/referred_promotion_rule_spec.rb".freeze, "spec/models/spree/referral_spec.rb".freeze, "spec/models/spree/referred_record_spec.rb".freeze, "spec/models/spree/store_credit_spec.rb".freeze, "spec/models/spree/user_spec.rb".freeze, "spec/spec_helper.rb".freeze]

  s.installed_by_version = "3.2.15" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<spree_core>.freeze, [">= 3.2.0"])
    s.add_development_dependency(%q<capybara>.freeze, ["~> 2.5"])
    s.add_development_dependency(%q<coffee-rails>.freeze, ["~> 4.0.0"])
    s.add_development_dependency(%q<database_cleaner>.freeze, ["~> 1.3"])
    s.add_development_dependency(%q<factory_girl>.freeze, ["~> 4.5"])
    s.add_development_dependency(%q<ffaker>.freeze, [">= 1.25.0"])
    s.add_development_dependency(%q<rspec-rails>.freeze, ["~> 3.4"])
    s.add_development_dependency(%q<sass-rails>.freeze, ["~> 5.0.0"])
    s.add_development_dependency(%q<selenium-webdriver>.freeze, [">= 2.41"])
    s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.9.0"])
    s.add_development_dependency(%q<sqlite3>.freeze, ["~> 1.3.10"])
    s.add_development_dependency(%q<mysql2>.freeze, [">= 0"])
    s.add_development_dependency(%q<pg>.freeze, [">= 0"])
    s.add_development_dependency(%q<shoulda-matchers>.freeze, [">= 0"])
    s.add_development_dependency(%q<shoulda-callback-matchers>.freeze, [">= 0"])
  else
    s.add_dependency(%q<spree_core>.freeze, [">= 3.2.0"])
    s.add_dependency(%q<capybara>.freeze, ["~> 2.5"])
    s.add_dependency(%q<coffee-rails>.freeze, ["~> 4.0.0"])
    s.add_dependency(%q<database_cleaner>.freeze, ["~> 1.3"])
    s.add_dependency(%q<factory_girl>.freeze, ["~> 4.5"])
    s.add_dependency(%q<ffaker>.freeze, [">= 1.25.0"])
    s.add_dependency(%q<rspec-rails>.freeze, ["~> 3.4"])
    s.add_dependency(%q<sass-rails>.freeze, ["~> 5.0.0"])
    s.add_dependency(%q<selenium-webdriver>.freeze, [">= 2.41"])
    s.add_dependency(%q<simplecov>.freeze, ["~> 0.9.0"])
    s.add_dependency(%q<sqlite3>.freeze, ["~> 1.3.10"])
    s.add_dependency(%q<mysql2>.freeze, [">= 0"])
    s.add_dependency(%q<pg>.freeze, [">= 0"])
    s.add_dependency(%q<shoulda-matchers>.freeze, [">= 0"])
    s.add_dependency(%q<shoulda-callback-matchers>.freeze, [">= 0"])
  end
end
