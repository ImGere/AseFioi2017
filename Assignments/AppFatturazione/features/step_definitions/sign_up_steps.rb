Given("I am on the home page") do
  visit root_path
end
When("I click on Sign up") do
  click_on "Sign Up"
end
And("I fill in the signup form with valid data") do
  @name='Paolo'
  @email=  ('a'..'z').to_a.shuffle.join + "@gmail.com"
  @tarif=12
  fill_in 'Name', with: @name
  fill_in 'Email', with: @email
  fill_in 'Tarif', with: @tarif
  fill_in 'Street name', with: 'Borino'
  fill_in 'Street number', with: 61
  fill_in 'City', with: 'Borino'
  fill_in 'Postal code', with: 32334
  fill_in 'State', with: 'Borino'
  fill_in 'Password', with: 'Einaudi'
  fill_in 'Password confirmation', with: 'Einaudi'
  click_on "Submit"
end
Then("I should create my account") do
  expect(page).to have_content(@name)
  expect(page).to have_content(@email)
  expect(page).to have_content(@tarif)
end

And("I leave the name blank") do
  @name=''
  fill_in 'Name', with: @name
  fill_in 'Email', with: @email
  fill_in 'Tarif', with: @tarif
  fill_in 'Street name', with: 'Borino'
  fill_in 'Street number', with: 61
  fill_in 'City', with: 'Borino'
  fill_in 'Postal code', with: 32334
  fill_in 'State', with: 'Borino'
  fill_in 'Password', with: 'Einaudi'
  fill_in 'Password confirmation', with: 'Einaudi'
  click_on "Submit"
end
Then("I should see an error message") do
  expect(page).to have_css('#error_explanation')
end

And("I leave the email blank") do
  @email=''
  fill_in 'Name', with: @name
  fill_in 'Email', with: @email
  fill_in 'Tarif', with: @tarif
  fill_in 'Street name', with: 'Borino'
  fill_in 'Street number', with: 61
  fill_in 'City', with: 'Borino'
  fill_in 'Postal code', with: 32334
  fill_in 'State', with: 'Borino'
  fill_in 'Password', with: 'Einaudi'
  fill_in 'Password confirmation', with: 'Einaudi'
  click_on "Submit"
end

And("I leave the tarif blank") do
  @tarif=''
  fill_in 'Name', with: @name
  fill_in 'Email', with: @email
  fill_in 'Tarif', with: @tarif
  fill_in 'Street name', with: 'Borino'
  fill_in 'Street number', with: 61
  fill_in 'City', with: 'Borino'
  fill_in 'Postal code', with: 32334
  fill_in 'State', with: 'Borino'
  fill_in 'Password', with: 'Einaudi'
  fill_in 'Password confirmation', with: 'Einaudi'
  click_on "Submit"
end

And("I leave the street name blank") do
  fill_in 'Name', with: @name
  fill_in 'Email', with: @email
  fill_in 'Tarif', with: @tarif
  fill_in 'Street name', with: ''
  fill_in 'Street number', with: 61
  fill_in 'City', with: 'Borino'
  fill_in 'Postal code', with: 32334
  fill_in 'State', with: 'Borino'
  fill_in 'Password', with: 'Einaudi'
  fill_in 'Password confirmation', with: 'Einaudi'
  click_on "Submit"
end

And("I leave the street number blank") do

  fill_in 'Name', with: @name
  fill_in 'Email', with: @email
  fill_in 'Tarif', with: @tarif
  fill_in 'Street name', with: 'Borino'
  fill_in 'Street number', with: nil
  fill_in 'City', with: 'Borino'
  fill_in 'Postal code', with: 32334
  fill_in 'State', with: 'Borino'
  fill_in 'Password', with: 'Einaudi'
  fill_in 'Password confirmation', with: 'Einaudi'
  click_on "Submit"
end

And("I leave the city blank") do

  fill_in 'Name', with: @name
  fill_in 'Email', with: @email
  fill_in 'Tarif', with: @tarif
  fill_in 'Street name', with: 'Borino'
  fill_in 'Street number', with: 32334
  fill_in 'City', with: ''
  fill_in 'Postal code', with: 32334
  fill_in 'State', with: 'Borino'
  fill_in 'Password', with: 'Einaudi'
  fill_in 'Password confirmation', with: 'Einaudi'
  click_on "Submit"
end

And("I leave the postal code blank") do
  fill_in 'Name', with: @name
  fill_in 'Email', with: @email
  fill_in 'Tarif', with: @tarif
  fill_in 'Street name', with: 'Borino'
  fill_in 'Street number', with: 32334
  fill_in 'City', with: 'Borino'
  fill_in 'Postal code', with: nil
  fill_in 'State', with: 'Borino'
  fill_in 'Password', with: 'Einaudi'
  fill_in 'Password confirmation', with: 'Einaudi'
  click_on "Submit"
end

And("I leave the state blank") do
  fill_in 'Name', with: @name
  fill_in 'Email', with: @email
  fill_in 'Tarif', with: @tarif
  fill_in 'Street name', with: 'Borino'
  fill_in 'Street number', with: 32334
  fill_in 'City', with: 'Borino'
  fill_in 'Postal code', with: 32334
  fill_in 'State', with: ''
  fill_in 'Password', with: 'Einaudi'
  fill_in 'Password confirmation', with: 'Einaudi'
  click_on "Submit"
end

And("I leave the password blank") do
  fill_in 'Name', with: @name
  fill_in 'Email', with: @email
  fill_in 'Tarif', with: @tarif
  fill_in 'Street name', with: 'Borino'
  fill_in 'Street number', with: 32334
  fill_in 'City', with: 'Borino'
  fill_in 'Postal code', with: nil
  fill_in 'State', with: 'Borino'
  fill_in 'Password', with: ''
  fill_in 'Password confirmation', with: 'Einaudi'
  click_on "Submit"
end

And("I leave the password confirmation blank") do
  fill_in 'Name', with: @name
  fill_in 'Email', with: @email
  fill_in 'Tarif', with: @tarif
  fill_in 'Street name', with: 'Borino'
  fill_in 'Street number', with: 32334
  fill_in 'City', with: 'Borino'
  fill_in 'Postal code', with: nil
  fill_in 'State', with: 'Borino'
  fill_in 'Password', with: 'Einaudi'
  fill_in 'Password confirmation', with: ''
  click_on "Submit"
end

And("Password confirmation does not match password") do
  fill_in 'Name', with: @name
  fill_in 'Email', with: @email
  fill_in 'Tarif', with: @tarif
  fill_in 'Street name', with: 'Borino'
  fill_in 'Street number', with: 32334
  fill_in 'City', with: 'Borino'
  fill_in 'Postal code', with: nil
  fill_in 'State', with: 'Borino'
  fill_in 'Password', with: 'Einaudi'
  fill_in 'Password confirmation', with: 'that'
  click_on "Submit"
end
