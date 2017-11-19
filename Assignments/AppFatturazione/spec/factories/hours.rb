FactoryBot.define do
  factory :hour do
    date Date.today
    start_time Time.now
    end_time Time.now
    description "this"
    user
    client
  end
end
