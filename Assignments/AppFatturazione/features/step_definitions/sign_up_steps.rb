Given("I am on the home page") do
  visit root_path
end
When("I fill in the form with valid data") do
  fill_in 'Name', with: 'Test'
  fill_in 'Email', with: ('a'..'z').to_a.shuffle.join + "@gmail.com"
  fill_in 'Tarif', with: 2
  fill_in 'Street name', with: 'Borino'
  fill_in 'Street number', with: 61
  fill_in 'City', with: 'Borino'
  fill_in 'Postal code', with: 32334
  fill_in 'State', with: 'Borino'
  fill_in 'Password', with: 'Einaudi'
  fill_in 'Password confirmation', with: 'Einaudi'
end
Then("I should create my account") do
  expect(page).to have_content(@name)
  expect(page).to have_content(@email)
  expect(page).to have_content(@tarif)
end

When("I leave the {string} blank") do |string|
  fill_in string, with: ""
end

Then("I should see an error message") do
  expect(page).to have_css('#error_explanation')
end

And("{string} does not match {string}") do |pass_conf, pass|
  fill_in pass, with: pass
  fill_in pass_conf, with: pass_conf
end
