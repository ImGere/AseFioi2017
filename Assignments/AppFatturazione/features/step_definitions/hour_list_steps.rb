Given("I have hours") do
  @hour=FactoryBot.create(:hour, user:@user, client:@client)
end

Then("I should see my hour list") do
  expect(page).to have_content(@hour.date)
  expect(page).to have_content(@hour.is_fatturata)
end

Given("I don't have hours") do
  Hour.all.each do |hour|
    hour.destroy
  end
end
Then("I should not see any hours") do
  expect(page).to_not have_link("Show")
end
