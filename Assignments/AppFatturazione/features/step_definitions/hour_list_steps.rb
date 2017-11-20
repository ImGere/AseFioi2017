Given("I have hours") do
  @client=FactoryBot.create(:client, user: @user)
  @hour=FactoryBot.create(:hour, user:@user, client:@client)
end
When("I visit the hours page") do
  click_on "Hours"
  click_on "Hour List"
end
Then("I should see my hour list") do
  expect(page).to have_content(@hour.date)
  expect(page).to have_content(@hour.start_time)
  expect(page).to have_content(@hour.end_time)
  expect(page).to have_content(@hour.description)
  expect(page).to have_content(@hour.user.name)
  expect(page).to have_content(@hour.client.name)
  expect(page).to have_content(@hour.is_fatturata)
end
