Given("I am on my {string} list") do |string|
  click_on "#{string}s"
  click_on "#{string} List"
end
And("I click on {string}") do |string|
  click_on string
end
When("I fill in the add new client form with valid data") do
  fill_in 'Name', with: ('a'..'z').to_a.shuffle[0..9].join
  fill_in 'Codice fiscale', with: ('a'..'z').to_a.shuffle.join
  fill_in 'Email', with: ('a'..'z').to_a.shuffle.join + "@gmail.com"
  fill_in 'Partita iva', with: 123123
  fill_in 'Street name', with: 'Borino'
  fill_in 'Street number', with: 8
  fill_in 'City', with: 'Borino'
  fill_in 'Postal code', with: 32032
  fill_in 'State', with: 'Borino'
end
Then("I should see the new client at the bottom of the client list") do
  client= Client.last
  expect(page).to have_content(client.name)
end

When("I fill in the add new client form with a blank name") do
  fill_in 'Name', with: ''
  fill_in 'Codice fiscale', with: ('a'..'z').to_a.shuffle.join
  fill_in 'Email', with: ('a'..'z').to_a.shuffle.join + "@gmail.com"
  fill_in 'Partita iva', with: 123123
  fill_in 'Street name', with: 'Borino'
  fill_in 'Street number', with: 8
  fill_in 'City', with: 'Borino'
  fill_in 'Postal code', with: 32032
  fill_in 'State', with: 'Borino'
end

When("I fill in the add new client form with a blank codice fiscale") do
  fill_in 'Name', with: 'ciao'
  fill_in 'Codice fiscale', with: ''
  fill_in 'Email', with: ('a'..'z').to_a.shuffle.join + "@gmail.com"
  fill_in 'Partita iva', with: 123123
  fill_in 'Street name', with: 'Borino'
  fill_in 'Street number', with: 8
  fill_in 'City', with: 'Borino'
  fill_in 'Postal code', with: 32032
  fill_in 'State', with: 'Borino'
end

When("I fill in the add new client form with a blank email") do
  fill_in 'Name', with: 'ciao'
  fill_in 'Codice fiscale', with: 'kjhkhk'
  fill_in 'Email', with: ''
  fill_in 'Partita iva', with: 123123
  fill_in 'Street name', with: 'Borino'
  fill_in 'Street number', with: 8
  fill_in 'City', with: 'Borino'
  fill_in 'Postal code', with: 32032
  fill_in 'State', with: 'Borino'
end

When("I fill in the add new client form with a blank partita iva") do
  fill_in 'Name', with: 'ciao'
  fill_in 'Codice fiscale', with: 'l;k;lk;k;'
  fill_in 'Email', with: ('a'..'z').to_a.shuffle.join + "@gmail.com"
  fill_in 'Partita iva', with: nil
  fill_in 'Street name', with: 'Borino'
  fill_in 'Street number', with: 8
  fill_in 'City', with: 'Borino'
  fill_in 'Postal code', with: 32032
  fill_in 'State', with: 'Borino'
end

When("I fill in the add new client form with a blank street name") do
  fill_in 'Name', with: 'ciao'
  fill_in 'Codice fiscale', with: 'lkjlkj'
  fill_in 'Email', with: ('a'..'z').to_a.shuffle.join + "@gmail.com"
  fill_in 'Partita iva', with: 123123
  fill_in 'Street name', with: ''
  fill_in 'Street number', with: 8
  fill_in 'City', with: 'Borino'
  fill_in 'Postal code', with: 32032
  fill_in 'State', with: 'Borino'
end

When("I fill in the add new client form with a blank street number") do
  fill_in 'Name', with: 'ciao'
  fill_in 'Codice fiscale', with: 'sdffas'
  fill_in 'Email', with: ('a'..'z').to_a.shuffle.join + "@gmail.com"
  fill_in 'Partita iva', with: 123123
  fill_in 'Street name', with: 'Borino'
  fill_in 'Street number', with: nil
  fill_in 'City', with: 'Borino'
  fill_in 'Postal code', with: 32032
  fill_in 'State', with: 'Borino'
end

When("I fill in the add new client form with a blank city") do
  fill_in 'Name', with: 'ciao'
  fill_in 'Codice fiscale', with: 'dsfafa'
  fill_in 'Email', with: ('a'..'z').to_a.shuffle.join + "@gmail.com"
  fill_in 'Partita iva', with: 123123
  fill_in 'Street name', with: 'Borino'
  fill_in 'Street number', with: 8
  fill_in 'City', with: ''
  fill_in 'Postal code', with: 32032
  fill_in 'State', with: 'Borino'
end

When("I fill in the add new client form with a blank postal code") do
  fill_in 'Name', with: 'ciao'
  fill_in 'Codice fiscale', with: 'dfsfsf'
  fill_in 'Email', with: ('a'..'z').to_a.shuffle.join + "@gmail.com"
  fill_in 'Partita iva', with: 123123
  fill_in 'Street name', with: 'Borino'
  fill_in 'Street number', with: 8
  fill_in 'City', with: 'Borino'
  fill_in 'Postal code', with: nil
  fill_in 'State', with: 'Borino'
end

When("I fill in the add new client form with a blank state") do
  fill_in 'Name', with: 'ciao'
  fill_in 'Codice fiscale', with: 'dsfdsfds'
  fill_in 'Email', with: ('a'..'z').to_a.shuffle.join + "@gmail.com"
  fill_in 'Partita iva', with: 123123
  fill_in 'Street name', with: 'Borino'
  fill_in 'Street number', with: 8
  fill_in 'City', with: 'Borino'
  fill_in 'Postal code', with: 32032
  fill_in 'State', with: ''
end
