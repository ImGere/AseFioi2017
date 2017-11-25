FactoryBot.define do
  factory :client do
    name "TestClient"
    email "test2@test.com"
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
