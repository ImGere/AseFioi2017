And("I have a client called {string}") do |string|
  @client=FactoryBot.create(:client, name: string, user:@user)
end
When("I select the hours I want to bill") do
  #page.check("hour_ids_")
  find("input[type='checkbox'][value='#{Hour.first.id}']").set(true)
end
Then("My invoice should be created successfully") do
  expect(page).to have_content("Create PDF document")
end

Then("I should get {string}")do |string|
  expect(page).to have_content(string)
end
