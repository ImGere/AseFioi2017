FactoryBot.define do
  factory :client do
    sequence(:name) {|n| "TestClient#{n}"}
    sequence(:email) {|n| "testclient#{n}@gmail.com"}
    codice_fiscale "sdfasfsfa"
    partita_iva 123112
    user
    street_name "overfsdfs"
    street_number 45
    city "mosul"
    postal_code 123232
    state "colombia"
  end
end
