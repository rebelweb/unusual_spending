FactoryBot.define do
  to_create { |i| i.save }

  factory :transaction do
    user_id { 1 }
    account_number { '1234567890' }
    transaction_at { Time.now }
    amount { 25.50 }
    category { 1 }
  end
end