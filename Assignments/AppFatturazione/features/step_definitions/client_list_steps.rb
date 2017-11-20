Given("I have an account") do
  @password="blahblah"
  FactoryBot.create(:user, name:"Test User", email:"test_user@gmail.com", password: @password)
end
And("I am logged in") do
  @user=User.find_by_name("Test User")
  visit login_path
  fill_in 'Email', with: @user.email
  fill_in 'Password', with: @password
  click_on "Submit"
  expect(page).to have_link("New client!")
end
