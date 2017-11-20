
When("I visit the home page") do
  visit root_path
end
Then("I should see Manage Clients and Manage Hours links") do
  expect(page).to have_link("Manage Clients")
  expect(page).to have_link("Manage Hours")
end

Given("I am a non authenticated user") do
  click_on "Account"
  click_on "Log out"
end
Then("I should see a Sign up link") do
  expect(page).to have_link("Sign Up")
end
