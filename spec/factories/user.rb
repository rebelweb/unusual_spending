FactoryBot.define do
  factory :client, class: User do
    first_name { 'John' }
    last_name { 'Doe' }
    email_address { 'jdoe@site.local' }
  end
end
