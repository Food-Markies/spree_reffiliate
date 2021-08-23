class GenerateReferralCodes < ActiveRecord::Migration[6.1]
  def change
    puts "Generating referral codes"

    ::Spree.user_class.all.each do |user|
      puts user.id
      if user.referral.nil?
        user.create_referral
      end
    end

    puts "Done generating referral codes"
  end
end
