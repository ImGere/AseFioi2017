Given("I am on my hours list") do
  click_on "Hours"
  click_on "Hour List"
end
And("I click on New Hour") do
  click_on "New Hour"
  expect(page).to have_content("New Hour")
end
When("I fill in the add new hour form with valid data") do
  fill_in 'Date', with: Date.today
  fill_in 'Start time', with: Time.now
  fill_in 'End time', with: Time.now
  fill_in 'Description', with: "This is a description"
  fill_in 'Client', with: @user.clients.first
  click_on "Create hour"
end
Then("I should see the new hour at the bottom of the hour list") do
  hour=Hour.last
  expect(page).to have_content(hour.description)
end

When("I fill in the add new hour form with an end time that comes before starting time")do
  fill_in 'Date', with: Date.today
  fill_in 'Start time', with: Time.now
  fill_in 'End time', with: Time.now - 3600
  fill_in 'Description', with: "This is a description"
  fill_in 'Client', with: @user.clients.first
  click_on "Create hour"
end

When("I fill in the add new hour form with an empty description field")do
  fill_in 'Date', with: Date.today
  fill_in 'Start time', with: Time.now
  fill_in 'End time', with: Time.now
  fill_in 'Description', with: ''
  fill_in 'Client', with: @user.clients.first
  click_on "Create hour"
end

When("I fill in the add new hour form with an empty client field")do
  fill_in 'Date', with: Date.today
  fill_in 'Start time', with: Time.now
  fill_in 'End time', with: Time.now
  fill_in 'Description', with: 'This is a description'
  fill_in 'Client', with: nil
  click_on "Create hour"
end
