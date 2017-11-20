Given("I am on the login page") do
  visit login_path
end

When("I fill in the login form with valid data") do
  #@user=User.find_by_name("Test User")
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

When("I leave the email field blank") do
  fill_in 'Email', with: ''
  fill_in 'Password', with: @password
  click_on "Submit"

end
Then("I should get an error message") do
  expect(page).to have_css('#error_explanation')
end

When("I leave the password field blank") do
  fill_in 'Email', with: @user.email
  fill_in 'Password', with: ''
  click_on "Submit"
end

When("I enter an invalid email") do

  fill_in 'Email', with: 'wtf@gmail.com'
  fill_in 'Password', with: @password
  click_on "Submit"
end

When("I enter an invalid password") do
  fill_in 'Email', with: @user.email
  fill_in 'Password', with: 'password'
  click_on "Submit"
end
