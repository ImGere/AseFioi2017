Given("I am on the login page") do
  visit login_path
end

When("I fill in the login form with valid data") do
  @user=User.find_by_name("Test User")
  fill_in 'Email', with: @user.email
  fill_in 'Password', with: @password
  click_on "Submit"
  expect(page).to have_link("New client!")
end
Then("I should be able to access my account") do
  click_on "Account"
  click_on "Profile"
  expect(page).to have_content(@user.name)
end
