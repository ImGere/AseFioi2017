Given("I am on my profile") do
  click_on "#{@user.name}"
  click_on "Profile"
end
When("I change my {string} to {string}") do |string1, string2|
  fill_in string1, with: string2
end
Then("My profile should have the new email {string}") do |string|
  @user.email==string
end

When("I change the user's email to an already existing one") do
  new_email="testing@newmail.com"
  other_user=FactoryBot.create(:user, email: new_email)
  fill_in "Email", with: new_email
end
