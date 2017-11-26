FactoryBot.define do
  factory :hour do
    date  Date.today
    start_time Time.now
    end_time Time.now + 3600
    description "blahblah"
    user
    client
    is_fatturata false
    invoice_id nil
  end
end
