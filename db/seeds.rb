users = User.create([
              { first_name: 'Jane', last_name: 'Doe', email_address: 'jane.doe@site.local' }
            ])

payments = []

(1..1000).step(1).each do
  payments << {
    user_id: users[0],
    account_num: 1234567898,
    amount: Faker::Number.decimal(l_digits: 2, r_digits: 3)
    
  }
end