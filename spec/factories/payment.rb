FactoryBot.define do
  factory :payment do
    user factory: :client
    transaction_date { DateTime.new(2022,1,1,12,00,00) }
    account_number { '123456789' }
    amount { 120.00 }
    category { :household }
  end
end