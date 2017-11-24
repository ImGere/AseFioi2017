When("I visit the home page") do
  visit root_path
end
Then("I should see a Sign up link") do
  expect(page).to have_link("Sign Up")
end


Then("I should see Manage Clients and Manage Hours links") do
  expect(page).to have_link("Manage Clients")
  expect(page).to have_link("Manage Hours")
end
